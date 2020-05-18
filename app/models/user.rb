class User < ApplicationRecord
  has_secure_password
  has_one :shopping_cart

  validates_presence_of :email, :name
  validates_uniqueness_of :email
end
