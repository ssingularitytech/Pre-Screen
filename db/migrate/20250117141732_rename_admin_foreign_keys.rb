class RenameAdminForeignKeys < ActiveRecord::Migration[7.2]
  def change
   add_reference :tests, :admin_user, foreign_key: true, index: true
   add_reference :topics, :admin_user, foreign_key: true, index: true
  end
end
