class AddNotesAndExpiryAtToInvitees < ActiveRecord::Migration[7.2]
  def change
    add_column :invitees, :notes, :text
    add_column :invitees, :expires_at, :datetime, null: false
  end
end
