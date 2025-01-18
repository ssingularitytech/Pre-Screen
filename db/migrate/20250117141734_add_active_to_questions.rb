class AddActiveToQuestions < ActiveRecord::Migration[7.2]
  def change
    add_column :questions, :active, :boolean, null: false, default: true
  end
end
