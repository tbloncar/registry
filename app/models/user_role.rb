class UserRole < ActiveRecord::Base
  attr_accessible :user_id, :role_id

  belongs_to :role
  belongs_to :user
end