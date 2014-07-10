Rails.application.routes.draw do
  root 'orders#new'
  resources :orders do
    resources :charges
  end
  resources :order_lines
  resources :share_options
end
