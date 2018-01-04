Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :matches

  get 'pages/home'
  put 'admin/:id' => 'users#change_to_admin', :as => "change_to_admin"
  post 'matches' => 'matches#generate_groups', :as => "generate_groups"


end
