Rails.application.routes.draw do
  post '/login', to: 'session#login'
  get '/sign_up', to: 'register#sign_up'
  resources :users, except: [:create]
  get '/current_user', to: 'application#user_must_exist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
