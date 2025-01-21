class AddStartAtAndEndAtToTests < ActiveRecord::Migration[7.2]
  def change
    add_column :tests, :start_at, :datetime, null: false
    add_column :tests, :end_at, :datetime, null: false
  end
end
