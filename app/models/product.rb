class Product < ApplicationRecord
	validates_presence_of :name, :description, :price
	has_many :shopping_cart_items
	has_many :shopping_carts, through: :shopping_cart_items
end
