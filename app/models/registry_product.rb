class RegistryProduct < ActiveRecord::Base
  attr_accessible :registry_id, :product_id

  belongs_to :registry
  belongs_to :product
end