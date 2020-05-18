class ShoppingCart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :shopping_cart_items
  has_many :product_variants, through: :shopping_cart_items
  has_one :order
end
