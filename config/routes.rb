Rails.application.routes.draw do
  get '/sign_up', to: 'register#sign_up'
  resources :users, except: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
