Rails.application.routes.draw do

  root 'home#home'

  get '/about', to: 'home#about'
 

  resources :posts do
    resources :comments
  end

  resources :tags
  
end
