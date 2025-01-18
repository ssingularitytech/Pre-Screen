class UpdateAssignmentsStructure < ActiveRecord::Migration[7.2]
  def change
    # Drop the existing table if it exists
    drop_table :assignments, if_exists: true

    # Create the table with the new structure
    create_table :assignments do |t|
      t.references :test, null: false, foreign_key: true
      t.references :invitee, null: false, foreign_key: true
      t.integer :score
      t.datetime :started_at
      t.datetime :completed_at
      t.jsonb :answers, default: {}

      t.timestamps
    end

    add_index :assignments, [:test_id, :invitee_id], unique: true
  end
end
