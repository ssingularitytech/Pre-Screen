class AddActiveToTopics < ActiveRecord::Migration[7.2]
  def change
    add_column :topics, :active, :boolean, default: true, null: false
  end
end
