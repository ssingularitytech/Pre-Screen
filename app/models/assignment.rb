class Assignment < ApplicationRecord
  # Associations
  belongs_to :test
  belongs_to :invitee

  # Validations
  validates :test, presence: true
  validates :invitee, presence: true
  # Enums
  enum :assignment_status, {
    pending: 0,
    in_progress: 1,
    completed: 2,
    expired: 3
  }, default: :pending, prefix: true

  # Store test session data
  serialize :session_data, coder: JSON

  # Callbacks
  before_create :initialize_session_data
  before_save :calculate_score, if: :assignment_status_completed?

  def start!
    return false if assignment_status_in_progress? || assignment_status_completed?

    update(
      assignment_status: :in_progress,
      started_at: Time.current
    )
  end

  def complete!
    return false unless assignment_status_in_progress?

    update(
      assignment_status: :completed,
      completed_at: Time.current
    )
  end

  def time_remaining
    return 0 if assignment_status_completed? || !started_at

    elapsed = Time.current - started_at
    remaining = (test.duration * 60) - elapsed

    [remaining, 0].max
  end

  def expired?
    time_remaining.zero?
  end

  private

  def initialize_session_data
    questions = test.random_questions(test.total_questions)
    self.session_data = {
      questions: questions.map { |q| { id: q.id, answered: false, answer: nil } },
      current_question_index: 0
    }
  end

  def calculate_score
    return unless assignment_status_completed?
    return if score.present?

    total_questions = test.questions.count
    return if total_questions.zero?

    correct_answers = answers.count { |_, answer| answer['correct'] }
    self.score = (correct_answers.to_f / total_questions * 100).round(2)
  end
end
