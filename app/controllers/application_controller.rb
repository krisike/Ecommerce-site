class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_cart
  
  protected

  def configure_permitted_parameters
    # Permit the `username` parameter along with the other
    # sign up parameters.
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  private
  def set_cart
    if current_user
      @cart = ShoppingCart.find_or_create_by(user: current_user)
    end
  end
end
