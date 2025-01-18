class AddTokenToInvitees < ActiveRecord::Migration[7.2]
  def change
    add_column :invitees, :token, :string
    add_index :invitees, :token
  end
end
