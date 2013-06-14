class Type < ActiveRecord::Base
  attr_accessible :name, :image_url, :icon_url

  has_many :products
  has_many :registries
end
