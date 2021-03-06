Rails.application.routes.draw do
  devise_for :users

  get 'hello_world', to: 'hello_world#index'
  resources :products do 
    resources :reviews
  end
  resources :welcome, only: [:index, :create]
  resources :shopping_carts, only: [:show]
  resources :orders, only: [:new, :create, :index, :show]
  resource :shopping_cart_items, only: [:create]
  resource :charges, only: [:new, :create]
  root "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

