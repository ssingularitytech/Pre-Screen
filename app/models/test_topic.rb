class TestTopic < ApplicationRecord
  # Associations
  belongs_to :test
  belongs_to :topic

  # Validations
  validates :test, presence: true
  validates :topic, presence: true
  validates :topic_id, uniqueness: { scope: :test_id, message: 'has already been added to this test' }

  # Delegate methods
  delegate :name, :description, to: :topic, prefix: true
  delegate :questions_count, :active_questions_count, to: :topic

  def active_questions
    topic.questions.active
  end
end
