Rails.application.routes.draw do
  root 'requests#index'
  resources :requests

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end