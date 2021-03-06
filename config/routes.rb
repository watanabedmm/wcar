Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
	resources :car_items
  resources :cars
  resources :equipments
  resources :grades
  resources :makers
  root "cars#link"
  get "/enquiries/insurance", to: "enquiries#insurance"
  post  "/enquiries/create", to: "enquiries#create" , as: 'enquiries'
  get "/enquiries/automobile", to: "enquiries#automobile"
  get "/enquiries/repair", to: "enquiries#repair"
  get "/enquiries/assessment", to: "enquiries#assessment"
end