Rails.application.routes.draw do
  root 'visits#index'

  resources :positions
  resources :people
  resources :visits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
