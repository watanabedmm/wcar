Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


	resources :car_items
  resources :cars
  resources :enquirys
  resources :equipments
  resources :grades
  resources :makers

end