class CreateRegistryProductsTable < ActiveRecord::Migration
  def change
    create_table :registry_products do |r|
      r.integer :registry_id
      r.integer :product_id
      r.text :description
      r.integer :quantity, default: 0
    end
  end
end
