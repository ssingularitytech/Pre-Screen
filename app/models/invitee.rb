class Invitee < ApplicationRecord
  # Associations
  has_many :assignments, dependent: :destroy
  has_many :tests, through: :assignments

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :token, presence: true, uniqueness: true

  # Callbacks
  before_validation :generate_token, on: :create
  after_create :send_invitation_email

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(32)
      break random_token unless self.class.exists?(token: random_token)
    end
  end

  def send_invitation_email
    InviteeMailer.invitation_email(self).deliver_later
  end
end
