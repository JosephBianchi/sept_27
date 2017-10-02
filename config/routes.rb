Rails.application.routes.draw do
  resources :wards, only: [:show]
  resources :candidates, only: [:show]
end
