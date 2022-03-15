Rails.application.routes.draw do

  resources :users, except: [:index]
  resources :images, except: [:index]
  resources :galleries, only: [:show]
  post '/auth/login', to: 'authentication#login'

end
