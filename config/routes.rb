Rails.application.routes.draw do
  root 'orders#new'
  resources :orders
  resources :order_lines
end
