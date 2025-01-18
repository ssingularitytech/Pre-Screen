class TestsController < ApplicationController
  before_action :set_test_and_assignment
  before_action :ensure_test_access
  before_action :ensure_test_not_completed, except: [:show]

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
      redirect_to test_path(@test, token: params[:token]), alert: 'Unable to start test.'
    end
  end

  def submit_answer
    return head :bad_request unless valid_answer?

    question_data = @assignment.session_data['questions'][@assignment.session_data['current_question_index']]
    question_data['answered'] = true
    question_data['answer'] = params[:answer]

    if @assignment.save
      head :ok
    else
      head :unprocessable_entity
    end
  end

  def complete
    if @assignment.complete!
      redirect_to test_path(@test, token: params[:token]), notice: 'Test completed successfully!'
    else
      redirect_to test_path(@test, token: params[:token]), alert: 'Unable to complete test.'
    end
  end

  private

  def set_test_and_assignment
    @invitee = Invitee.find_by!(token: params[:token])
    @test = Test.find(params[:id])
    @assignment = @test.assignments.find_by!(invitee: @invitee)
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Invalid test link.'
  end

  def ensure_test_access
    unless @test.active?
      redirect_to root_path, alert: 'This test is no longer active.'
    end
  end

  def ensure_test_not_completed
    if @assignment.completed?
      redirect_to test_path(@test, token: params[:token]), alert: 'This test has already been completed.'
    end
  end

  def current_question
    return nil unless @assignment.in_progress?

    question_data = @assignment.session_data['questions'][@assignment.session_data['current_question_index']]
    Question.find(question_data['id']).to_test_hash
  end

  def valid_answer?
    params[:answer].present? && %w[A B C D].include?(params[:answer])
  end
end 