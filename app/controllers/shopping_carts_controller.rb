class ShoppingCartsController < ApplicationController

  def show
      @cart = ShoppingCart.find(params[:id])
      @cartItems = @cart.shopping_cart_items
      @user = @cart.user
      @total = @cartItems.reduce(0) { |acc, item| acc + item.product_variant.product.price.round(2) }
  end

end
