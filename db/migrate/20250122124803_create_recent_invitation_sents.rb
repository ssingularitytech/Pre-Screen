class CreateRecentInvitationSents < ActiveRecord::Migration[7.2]
  def change
    create_table :recent_invitation_sents do |t|
      t.references :invitee, null: false, foreign_key: true
      t.datetime :sent_at, null: false
      t.references :test, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true
      t.timestamps
    end
  end
end
