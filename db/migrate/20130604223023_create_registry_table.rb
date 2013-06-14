class CreateRegistryTable < ActiveRecord::Migration
  def change
    create_table :registries do |r|
      r.string :name
      r.text :description
      r.integer :user_id
      r.integer :type_id
    end
  end
end
