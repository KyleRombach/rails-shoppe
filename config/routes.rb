Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :products

  resource :cart, only: [:show] do
    post "add", path: "add/:id"
    get :checkout
  end

  resources :orders, only: [:index, :show, :create, :update]

  root 'products#index'
end
