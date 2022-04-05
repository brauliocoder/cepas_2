class AddAdminToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :admin, :boolean, null: false, default: false
  end
end
