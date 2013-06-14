class Registry < ActiveRecord::Base
  attr_accessible :name, :description, :user_id

  belongs_to :user
  belongs_to :type
  has_many :products, through: :registry_products
  has_many :registry_products

  def category_products(category_id)
    products.where(category_id: category_id)
  end
end