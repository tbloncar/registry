class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  has_secure_password
  has_many :roles, through: :user_roles
  has_many :user_roles

  before_save { |user| user.email = email.downcase }

  def full_name
    return "#{first_name} #{last_name}"
  end
end
