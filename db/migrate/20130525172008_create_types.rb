class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
