class ShoppingCartItemsController < ApplicationController

  def create
    @variant = ProductVariant.where(size_id:params[:size_id], color_id:params[:color_id], product_id:params[:product_id]).first
    @cart_item = ShoppingCartItem.create(product_variant:@variant, shopping_cart:@cart)
    if @cart_item.save
      redirect_to product_path(params[:product_id])
    else
      puts @cart_item.errors.full_messages.to_sentence.capitalize
    end
  end

  private
  def cart_item_params
    params.require(:shopping_cart_item).permit(:product_id, :size_id, :color_id)
  end
end
