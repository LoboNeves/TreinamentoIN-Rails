Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/formulario', to: 'contact#form', as: :my_form
  get '/destino', to: 'contact#destiny', as: :destiny

  post '/destino', to: 'contact#destiny', as: :post_destiny
  get '/fim', to: 'contact#final', as: :final
end
