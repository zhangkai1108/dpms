class CreateUsersRoles < ActiveRecord::Migration
  def change
    create_table :users_roles do |t|
      t.integer :role_id
      t.integer :user_id
    end
  end
end
