class ProductsController < ApplicationController
  before_action :set_cart

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @sizes = @product.sizes.uniq.map { |size| [size.name, size.id] }
    @colors = @product.colors.uniq.map { |color| [color.name, color.id] }
    @products = Product.all
  end

  private
  def set_cart
    @cart = ShoppingCart.find_or_create_by(user: current_user)
  end

end
