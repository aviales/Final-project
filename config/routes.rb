Rails.application.routes.draw do
  #resources :users, only: [:index, :show, :new]
  resources :work_areas
  resources :check_list_items
  resources :check_lists
  resources :contractor_types
  resources :contractors
  resources :projects do 
    resources :inspeccions
  end
  
  devise_for :admin_users
  devise_for :users
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
