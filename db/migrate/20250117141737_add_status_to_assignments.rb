class AddStatusToAssignments < ActiveRecord::Migration[7.2]
  def change
    add_column :assignments, :assignment_status, :string, null: false, default: 'pending'
    add_index :assignments, :assignment_status
  end
end
