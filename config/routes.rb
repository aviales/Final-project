Rails.application.routes.draw do
  devise_for :users do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

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
  
 
  root'home#index'
  devise_scope :user do
    authenticated :user do
      root 'pages#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
