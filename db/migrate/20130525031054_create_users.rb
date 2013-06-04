class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :shipping_street
      t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip
      t.date :due_date
      t.string :baby_gender
      t.boolean :shower
      t.date :shower_date

      t.timestamps
    end
  end
end
