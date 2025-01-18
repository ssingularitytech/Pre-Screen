class AddFieldsToAssignments < ActiveRecord::Migration[7.2]
  def change
    add_column :assignments, :started_at, :datetime
    add_column :assignments, :session_data, :json
  end
end
