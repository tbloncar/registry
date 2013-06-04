class Registry < ActiveRecord::Base
  attr_accessible :name, :description, :user_id

  belongs_to :user
  has_many :products, through: :registry_products
  has_many :registry_products
end