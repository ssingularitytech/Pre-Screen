# Preview all emails at http://localhost:3000/rails/mailers/invitee_mailer
class InviteeMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/invitee_mailer/invitation_email
  def invitation_email
    InviteeMailer.invitation_email
  end
end
