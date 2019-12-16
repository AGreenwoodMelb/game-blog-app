Rails.application.routes.draw do

  root 'home#index'
  resources :posts


  namespace :api do
    resources :post_manager, only: [:index]
  end
end
