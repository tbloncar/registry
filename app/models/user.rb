class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :street, :city, :state, :zip, :shipping_street, :shipping_city, :shipping_state, :shipping_zip, :due_date, :baby_gender, :shower, :shower_date
  has_secure_password
  has_many :roles, through: :user_roles
  has_many :user_roles
  has_one :registry

  before_save { |user| user.email = email.downcase }

  def full_name
    return "#{first_name} #{last_name}"
  end
end
