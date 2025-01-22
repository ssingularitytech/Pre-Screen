class RecentInvitationSent < ApplicationRecord
  belongs_to :invitee
  belongs_to :test
  belongs_to :assignment
end
