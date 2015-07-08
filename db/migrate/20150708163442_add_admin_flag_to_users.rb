class AddAdminFlagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, defualt: false, null: false
  end
end
