Rails.application.routes.draw do
 
  devise_for :users
  resources :concerts
  root 'concerts#index'

end
