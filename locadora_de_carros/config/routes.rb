Rails.application.routes.draw do
  
  resources :registers
  devise_for :users
  #get 'home/index'
  get 'home/sobre'
  root 'home#index'
  # root 'home/cadastro'

end
