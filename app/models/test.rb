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
  validates :topics, presence: true

  # Scopes
  scope :active, -> { where(active: true) }
  scope :by_admin_user, ->(admin_user_id) { where(admin_user_id: admin_user_id) }

  def total_questions
    topics.joins(:questions).where(questions: { active: true }).count
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
end
