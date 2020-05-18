class ShoppingCartItem < ApplicationRecord
  belongs_to :product_variant
  belongs_to :shopping_cart
end
