class Topic < ApplicationRecord
  # Associations
  belongs_to :admin_user
  has_many :questions, dependent: :destroy
  has_many :test_topics, dependent: :destroy
  has_many :tests, through: :test_topics

  # Validations
  validates :name, presence: true
  validates :description, presence: true

  # Scopes
  scope :active, -> { where(active: true) }
  scope :with_questions, -> { joins(:questions).distinct }
  scope :by_admin_user, ->(admin_user_id) { where(admin_user_id: admin_user_id) }

  def questions_count
    questions.count
  end

  def tests_count
    tests.count
  end

  def active_questions_count
    questions.where(active: true).count
  end
end
