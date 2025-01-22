class InvitationJob
  include Sidekiq::Job

  def perform()
    # All the tests that the start time is about to start in 10 minutes
    current_time = Time.now
    tests = Test.where('start_at > ?', current_time - 5.minutes).where('start_at < ?', current_time)
    puts "Tests found: #{tests.count}"
    tests.each do |test|  
      test.invitees.each do |invitee|
        puts "Invitee found: #{invitee.id}"
        recent_invitation_sent = invitee.recent_invitation_sent.where(test_id: test.id).first
        puts "Recent invitation sent: #{recent_invitation_sent.id}" if recent_invitation_sent.present?
        # check if the recent_invitation_sent is nil or the sent_at is more than 5 minutes ago
        puts "Checking if recent invitation sent is nil or sent_at is more than 5 minutes ago"
        invitee.resend_invitation_email! if recent_invitation_sent.nil?
        puts "Invitation sent" if recent_invitation_sent.present? && recent_invitation_sent.nil?
        puts "Invitation already sent" if recent_invitation_sent.present?
      end
    end
  end
end
