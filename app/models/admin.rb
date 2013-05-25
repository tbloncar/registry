class Admin < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  def full_name
    return "#{first_name} #{last_name}"
  end
end
