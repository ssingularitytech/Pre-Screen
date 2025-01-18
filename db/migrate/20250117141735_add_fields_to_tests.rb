class AddFieldsToTests < ActiveRecord::Migration[7.2]
  def change
    add_column :tests, :duration, :integer, null: false, default: 30  # duration in minutes
    add_column :tests, :passing_score, :integer, null: false, default: 70  # passing score percentage
    add_column :tests, :active, :boolean, null: false, default: true
  end
end
