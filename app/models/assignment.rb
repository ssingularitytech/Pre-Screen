class Assignment < ApplicationRecord
  # Associations
  belongs_to :test
  belongs_to :invitee
  has_many :recent_invitation_sent, dependent: :destroy
  # Validations
  validates :test, presence: true
  validates :invitee, presence: true
  validates :token, presence: true, uniqueness: true

  # Enums
  enum :assignment_status, {
    pending: 0,
    in_progress: 1,
    completed: 2,
    expired: 3
  }, default: :pending, prefix: true

  # Callbacks
  before_validation :generate_token, on: :create
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
    return test.duration * 60 if started_at.nil?
    return 0 if assignment_status_completed? || !started_at

    elapsed = Time.current - started_at
    remaining = (test.duration * 60) - elapsed

    [remaining, 0].max
  end

  def expired?
    time_remaining.zero?
  end

  def completed?
    assignment_status_completed?
  end

  def in_progress?
    assignment_status_in_progress?
  end 

  def pending?
    assignment_status_pending?
  end

  def total_questions
    session_data['questions'].count
  end

  private

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(32)
      break random_token unless self.class.exists?(token: random_token)
    end
  end
  
  def initialize_session_data
    # The limit should be calculated such way:
    # 1 question takes 40 seconds to complete
    # So calculate the limit based on the duration of the test
    # and the number of questions in the test
    duration_in_seconds = test.duration * 60
    questions_count = test.total_questions
    questions_limit = (duration_in_seconds / 40).to_i
    questions_limit = [questions_limit, questions_count].min
    questions = test.random_questions(questions_limit)
    self.session_data = {
      questions: questions.map { |q| { 
        id: q.id, 
        question_text: q.question_text,
        options: q.options,
        answered: false, 
        answer: nil 
      }},
      current_question_index: 0
    }
  end

  def calculate_score
    return unless assignment_status_completed?
    return if score.present?

    total_questions = session_data['questions'].count
    return if total_questions.zero?

    correct_answers = session_data['questions'].count do |q|
      question = Question.find_by(id: q['id'])
      question&.correct_option_index == q['answer'].to_i
    end

    self.score = (correct_answers.to_f / total_questions * 100).round(2)
  end
end
