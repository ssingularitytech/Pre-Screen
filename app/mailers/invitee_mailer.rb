class InviteeMailer < ApplicationMailer
  def invitation_email(invitee)
    @invitee = invitee
    @test = invitee.tests.sort_by(&:created_at).last
    host = ENV['HOST']
    @assignment = @invitee.assignments.sort_by(&:created_at).last
    # here t: is the invitee token, a_t: is the assignment token
    @url = test_url(@test, t: @invitee.token, host: host, a_t: @assignment.token)
    
    mail(
      to: @invitee.email,
      subject: "You've been invited to take a test"
    )
  end
end
