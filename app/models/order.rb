class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shopping_cart
end
