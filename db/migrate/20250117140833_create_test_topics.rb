class CreateTestTopics < ActiveRecord::Migration[7.2]
  def change
    create_table :test_topics do |t|
      t.references :test, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
