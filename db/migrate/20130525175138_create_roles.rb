class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |r|
      r.string :name
    end
  end
end
