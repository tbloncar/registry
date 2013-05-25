class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image, :type_id

  has_attached_file :image, :styles => { medium: "300x300>", thumb: "150x150>" }
end