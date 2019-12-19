Rails.application.routes.draw do

  root 'home#home'

  get '/about', to: 'home#about'

  resources :posts do
    resources :comments
end

  resources :tags

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  get '/sign_up', to: 'users#new', as: :sign_up
  get '/log_in', to: 'sessions#new', as: :log_in
  delete '/log_out', to: 'sessions#destroy', as: :log_out

end
