class TestsController < ApplicationController
  skip_before_action :authenticate_admin_user!
  before_action :set_test
  before_action :set_assignment
  before_action :set_invitee
  before_action :check_test_access

  def show
    if @assignment.completed?
      render :completed
    elsif !@assignment.in_progress?
      @can_start = @test.start_at <= Time.current
      render :start
    else
      @current_question = current_question
      # calculate the current question index based on the count of total questions answered
      @current_question_index = @assignment.session_data['questions'].count { |q| q['answered'] == true } + 1
      render :test
    end
  end

  def start
    if @assignment.start!
      redirect_to test_path(@test, t: params[:token], a_t: @assignment.token), notice: 'Test started!'
    else
      redirect_to test_path(@test, t: params[:token], a_t: @assignment.token), alert: 'Could not start test.'
    end
  end

  def answer
    current_question = @assignment.session_data['questions'].find { |q| q['id'].to_s == params[:question_id].to_s }
    return redirect_to test_path(@test, t: params[:token], a_t: @assignment.token), alert: 'Invalid question.' unless current_question

    # Update the answer in session data
    current_question['answered'] = true
    current_question['answer'] = params[:answer]
    
    # Save the updated session data
    @assignment.save
    
    # Check if this was the last question
    if @assignment.session_data['questions'].all? { |q| q['answered'] }
      @assignment.complete!
      redirect_to test_path(@test, t: params[:token], a_t: @assignment.token), notice: 'Test completed!'
    else
      redirect_to test_path(@test, t: params[:token], a_t: @assignment.token), notice: 'Answer recorded!'
    end
  end

  private

  def set_test
    @test = Test.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Test not found.'
  end

  def set_assignment
    puts "Setting assignment for test #{@test.id} with token #{params[:a_t]} and invitee token #{params[:t]}"
    @assignment = @test.assignments.joins(:invitee).find_by!(token: params[:a_t])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Invalid test access.'
  end

  def set_invitee
    @invitee = @assignment.invitee if @assignment
  end

  def check_test_access
    return unless @assignment && @invitee

    if @assignment.completed?
      render :completed
    elsif @assignment.expired?
      render :expired
    end
  end

  def current_question
    @assignment.session_data['questions'].find { |q| !q['answered'] }
  end
end 