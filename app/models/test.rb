class Test < ApplicationRecord
  # Associations
  belongs_to :admin_user
  has_many :test_topics, dependent: :destroy
  has_many :topics, through: :test_topics
  has_many :assignments, dependent: :destroy
  has_many :invitees, through: :assignments
  has_many :questions, through: :topics

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :passing_score, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100 }
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :topics, presence: true
  validate :check_start_and_end_time

  # Scopes
  scope :active, -> { where(active: true) }
  scope :by_admin_user, ->(admin_user_id) { where(admin_user_id: admin_user_id) }

  def total_questions
    topics.joins(:questions).where(questions: { active: true }).count
  end

  def random_questions(limit = nil)
    questions.active.order('RANDOM()').limit(limit)
  end

  def average_score
    assignments.where.not(score: nil).average(:score) || 0
  end

  def passing_count
    assignments.where('score >= ?', passing_score).count
  end

  def completion_rate
    total = assignments.count
    return 0 if total.zero?
    
    (assignments.where.not(completed_at: nil).count.to_f / total * 100).round(2)
  end

  # Validations
  def check_start_and_end_time
    return if start_at.blank? || end_at.blank?
    errors.add(:start_at, "can't be in the past") if start_at < Time.now
    errors.add(:end_at, "can't be before start time") if end_at < start_at
    # check difference between start_at and end_at should be the duration in minutes
    errors.add(:end_at, 'Duration mismatch (Difference between start and end time should be equal to duration)') if (end_at - start_at).to_i != duration * 60
    errors.add(:start_at, 'Duration mismatch (Difference between start and end time should be equal to duration)') if (end_at - start_at).to_i != duration * 60
  end
end


