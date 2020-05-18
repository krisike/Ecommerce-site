class OrdersController < ApplicationController 

  def index 
    @orders = Order.where(user: current_user)
  end 

  def show 
    @order = Order.find(params[:id])
    @items = @order.shopping_cart.shopping_cart_items.map do |item|
      product_variant = item.product_variant
      product = product_variant.product
      color = product_variant.color.name
      size = product_variant.size.name
      { product: product, color: color, size: size }
    end
  end 

  def new 
    @order = Order.new 
  end  

  def create 
    @user = current_user 
    @shopping_cart = current_user.shopping_cart
    @order = Order.create(user: @user, shopping_cart: @shopping_cart)

    if @order.save
      current_user.update(shopping_cart: nil)
      new_cart = ShoppingCart.create
      current_user.update(shopping_cart: new_cart)
      redirect_to products_path
    end
  end 
end 