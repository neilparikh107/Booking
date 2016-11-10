Rails.application.routes.draw do
  resources :displays
  resources :customers
  root to: 'customers#index'
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
