Rails.application.routes.draw do
  root 'orders#new'
  resources :orders
end
