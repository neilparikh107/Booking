Rails.application.routes.draw do
  resources :customers
  root to: 'bookings#new'
  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
