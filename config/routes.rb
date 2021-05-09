Rails.application.routes.draw do
  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :contractors
  resources :work_areas
  resources :check_list_items
  resources :check_lists
  resources :contractor_types
  resources :projects do 
    resources :inspeccions
  end
  resources :todo_lists do
  	resources :todo_items do
  		member do
  			patch :complete
  		end	
  	end
  end	
  get 'inspeccions', to:'inspeccions#index', as:'inspeccions'
  post "/inspeccions", to: 'inspeccions#create'
  root'home#index'
end
