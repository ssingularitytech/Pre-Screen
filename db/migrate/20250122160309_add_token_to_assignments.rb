class AddTokenToAssignments < ActiveRecord::Migration[7.2]
  def change
    add_column :assignments, :token, :string, null: false
    add_index :assignments, :token, unique: true
  end
end
