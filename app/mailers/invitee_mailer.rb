class InviteeMailer < ApplicationMailer
  def invitation_email(invitee)
    @invitee = invitee
    @test = invitee.tests.sort_by(&:created_at).last
    host = ENV['HOST']
    @url = test_url(@test, token: @invitee.token, host: host)
    
    mail(
      to: @invitee.email,
      subject: "You've been invited to take a test"
    )
  end
end
