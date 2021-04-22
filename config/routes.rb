Rails.application.routes.draw do

  root'home#index'
  resources :work_areas
  resources :check_list_items
  resources :check_lists
  resources :inspeccions
  resources :contractor_types
  resources :contractors
  resources :projects
  get 'home/index'
  devise_for :admin_users
  devise_for :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
