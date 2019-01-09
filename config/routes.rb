Rails.application.routes.draw do
  resources :reservations
  resources :videobeams
  resources :laptops
  resources :meeting_rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'reservations#index'
end
