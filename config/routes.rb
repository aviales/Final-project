Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :work_areas
  resources :check_list_items
  resources :check_lists
  resources :contractor_types
  resources :projects do 
    resources :inspeccions
  end
  resources :contractors
  get 'inspeccions', to:'inspeccions#index', as:'inspeccions'
  root'home#index'
end
