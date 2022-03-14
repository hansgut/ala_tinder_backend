Rails.application.routes.draw do

  resources :users, except: [:index]
  post '/auth/login', to: 'authentication#login'

end
