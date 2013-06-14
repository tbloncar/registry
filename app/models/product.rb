class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image, :type_id, :category_id, :product_url, :img_url

  has_attached_file :image, :styles => { medium: "300x300>", thumb: "150x150>", default_url: "/assets/custom-item.png" }
  has_many :registries, through: :registry_products
  has_many :registry_products
  belongs_to :category
  belongs_to :type
end