Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :groups

  put 'admin/:id' => 'users#change_to_admin', :as => "change_to_admin"

end
