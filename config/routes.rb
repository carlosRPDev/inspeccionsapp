Rails.application.routes.draw do
  resources :positions
  resources :people
  resources :visits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
