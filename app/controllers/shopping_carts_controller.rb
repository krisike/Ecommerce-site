class ShoppingCartsController < ApplicationController

  def show
      @cart = ShoppingCart.find(params[:id])
      @cartItems = @cart.shopping_cart_items
      @user = @cart.user
  end

end
