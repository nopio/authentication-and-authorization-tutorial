Rails.application.routes.draw do
  resources :products
  root 'dashboard#index'
end
