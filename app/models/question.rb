class Question < ApplicationRecord
  # Associations
  belongs_to :topic
  has_one :admin, through: :topic

  # Validations
  validates :question_text, presence: true
  validates :option_a, presence: true
  validates :option_b, presence: true
  validates :option_c, presence: true
  validates :option_d, presence: true
  validates :correct_answer, presence: true,
                           inclusion: { in: %w[A B C D], message: 'must be A, B, C, or D' }

  # Scopes
  scope :active, -> { where(active: true) }
  scope :by_topic, ->(topic_id) { where(topic_id: topic_id) }

  def options
    {
      'A' => option_a,
      'B' => option_b,
      'C' => option_c,
      'D' => option_d
    }
  end

  def correct_option_text
    options[correct_answer]
  end

  def correct_option_index
    options.keys.index(correct_answer)
  end

  def to_test_hash
    {
      id: id,
      question_text: question_text,
      options: options
    }
  end
end
