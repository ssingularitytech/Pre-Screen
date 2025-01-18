class InviteeMailer < ApplicationMailer
  def invitation_email(invitee)
    @invitee = invitee
    @test = invitee.tests.last
    @url = test_url(@test, token: invitee.token)
    
    mail(
      to: @invitee.email,
      subject: "You've been invited to take a test"
    )
  end
end
