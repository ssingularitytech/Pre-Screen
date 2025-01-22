class Invitee < ApplicationRecord
  # Associations
  has_many :assignments, dependent: :destroy
  has_many :tests, through: :assignments
  has_many :recent_invitation_sent, dependent: :destroy

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :expires_at, presence: true
  validates :token, presence: true, uniqueness: true

  # Scopes
  scope :completed, -> { joins(:assignments).where(assignments: { assignment_status: :completed }) }
  scope :in_progress, -> { joins(:assignments).where(assignments: { assignment_status: :in_progress }) }
  scope :pending, -> { joins(:assignments).where(assignments: { assignment_status: :pending }) }

  # Callbacks
  before_validation :generate_token, on: :create
  # TODO: commenting this as invitation email will be sent before the test is about to start
  # after_create :send_invitation_email

  def status
    latest_assignment&.assignment_status || 'pending'
  end

  def score
    latest_assignment&.score
  end

  def started_at
    latest_assignment&.started_at
  end

  def completed_at
    latest_assignment&.completed_at
  end

  def completed?
    status == 'completed'
  end

  def in_progress?
    status == 'in_progress'
  end

  def pending?
    status == 'pending'
  end

  def resend_invitation_email!
    send_invitation_email
  end

  private

  def latest_assignment
    assignments.order(created_at: :desc).first
  end

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(32)
      break random_token unless self.class.exists?(token: random_token)
    end
  end

  def send_invitation_email
    puts "Sending invitation email to #{email}"
    InviteeMailer.invitation_email(self).deliver_later
    latest_test = tests.sort_by(&:created_at).last
    latest_assignment = assignments.sort_by(&:created_at).last
    RecentInvitationSent.create!(invitee: self, test: latest_test, assignment: latest_assignment, sent_at: Time.now)
  end
end
