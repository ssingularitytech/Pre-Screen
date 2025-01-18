class AddSessionDataToAssignments < ActiveRecord::Migration[7.2]
  def change
    add_column :assignments, :session_data, :jsonb, default: {}, null: false
  end
end
