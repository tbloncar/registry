class CreateCategoryTable < ActiveRecord::Migration
  def change
    create_table :categories do |c|
      c.string :name
      c.string :image_url

      c.timestamps
    end
  end
end
