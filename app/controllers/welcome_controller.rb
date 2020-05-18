class WelcomeController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @time = Time.now.strftime("%m_%d_%Y_%H_%M_%S")
    
    @guest_user = User.create(
      email: "awesome_teena_guest_#{@time}@email.com",
      name: "Awesome_Teena_Guest",
      password: "password"
    )
    if @guest_user.save!
      sign_in(@guest_user)
      redirect_to products_path
    end
  end
end
