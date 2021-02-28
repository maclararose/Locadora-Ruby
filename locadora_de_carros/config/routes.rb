Rails.application.routes.draw do
  devise_for :users
  #get 'home/index'
  get 'home/sobre'
  root 'home#index'
  
end
