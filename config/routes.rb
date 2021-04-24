Rails.application.routes.draw do

 
  devise_for :admin_users
  resources :users
  resources :work_areas
  resources :check_list_items
  resources :check_lists
  resources :inspeccions
  resources :contractor_types
  resources :contractors
  resources :projects
  get 'home/index'
  
  devise_for :users
  root'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
