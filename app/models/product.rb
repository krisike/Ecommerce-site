class Product < ApplicationRecord
	validates_presence_of :name, :description, :price
	has_many :product_variants
	
	has_many :sizes, through: :product_variants
	
	has_many :colors, through: :product_variants

	has_many :shopping_cart_items
	has_many :shopping_carts, through: :shopping_cart_items
end
