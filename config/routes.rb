Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  resources :cars do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
