class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :shopping_cart

  validates_presence_of :email, :name

  validates_uniqueness_of :email

  has_many :orders

end


