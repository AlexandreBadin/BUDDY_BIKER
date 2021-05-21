Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bikers, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end
  resources :bookings, only: :destroy
  resources :bikers, only: :destroy
  resources :reviews, only: :destroy

  get 'users/dashboard', to: 'users#dashboard', as: :users_dashboard
end
