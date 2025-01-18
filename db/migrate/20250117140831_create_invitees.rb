class CreateInvitees < ActiveRecord::Migration[7.2]
  def change
    create_table :invitees do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
