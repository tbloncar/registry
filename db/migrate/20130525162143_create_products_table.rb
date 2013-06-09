class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |p|
      p.string :name
      p.attachment :image
      p.text :description
      p.decimal :price
      p.integer :type_id
      p.integer :category_id

      p.timestamps
    end
  end
end
