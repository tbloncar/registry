class CreateUserRolesTable < ActiveRecord::Migration
  def change
    create_table :user_roles do |u|
      u.integer :user_id
      u.integer :role_id

      u.timestamps
    end
  end
end
