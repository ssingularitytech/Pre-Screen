class TestsController < ApplicationController
  before_action :set_test
  before_action :set_assignment
  before_action :check_test_access

  def show
    if @assignment.completed?
      render :completed
    elsif !@assignment.in_progress?
      render :start
    else
      @current_question = current_question
      render :test
    end
  end

  def start
    if @assignment.start!
      redirect_to test_path(@test, token: params[:token]), notice: 'Test started!'
    else
      redirect_to test_path(@test, token: params[:token]), alert: 'Could not start test.'
    end
  end

  def answer
    current_question = @assignment.session_data['questions'].find { |q| q['id'].to_s == params[:question_id].to_s }
    return redirect_to test_path(@test, token: params[:token]), alert: 'Invalid question.' unless current_question

    # Update the answer in session data
    current_question['answered'] = true
    current_question['answer'] = params[:answer]
    
    # Save the updated session data
    @assignment.save
    
    # Check if this was the last question
    if @assignment.session_data['questions'].all? { |q| q['answered'] }
      @assignment.complete!
      redirect_to test_path(@test, token: params[:token]), notice: 'Test completed!'
    else
      redirect_to test_path(@test, token: params[:token]), notice: 'Answer recorded!'
    end
  end

  private

  def set_test
    @test = Test.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Test not found.'
  end

  def set_assignment
    @assignment = @test.assignments.joins(:invitee)
                      .find_by!(invitees: { token: params[:token] })
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Invalid test access.'
  end

  def check_test_access
    if @assignment.expired?
      redirect_to root_path, alert: 'Test has expired.'
    end
  end

  def current_question
    @assignment.session_data['questions'].find { |q| !q['answered'] }
  end
end 