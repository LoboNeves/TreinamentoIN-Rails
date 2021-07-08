Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/calculadora/:number1/:number2', to: 'calculadora#home'
  get '/calculadora/:number1/:number2/soma', to: 'calculadora#soma', as: 'soma'
  get '/calculadora/:number1/:number2/subtracao', to: 'calculadora#subtracao', as: 'subtracao'
  get '/calculadora/:number1/:number2/divisao', to: 'calculadora#divisao', as: 'divisao'
  get '/calculadora/:number1/:number2/multiplicacao', to: 'calculadora#multiplicacao', as: 'multiplicacao'
end
