class FixAdminColumn < ActiveRecord::Migration[6.0]
  def change
      rename_column :users, :is_admin?, :admin_user
  end
end
