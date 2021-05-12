Rails.application.routes.draw do
  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :contractors
  resources :users
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
  get 'contractors/:id/api', to: 'contractors#api', as: 'api'
   get 'projects/:id/api_v1', to: 'projects#api_project', as: 'api_v1'
  root'home#index'
end

