Rails.application.routes.draw do

  resources :users, except: [:index]
  resources :images, except: [:index]
  resources :galleries, only: [:show]
  resources :profiles, only: [:show, :update]
  post '/auth/login', to: 'authentication#login'

end
