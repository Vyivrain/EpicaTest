Rails.application.routes.draw do
  devise_for :users
  root to: 'purchases#index'
  resources :admins
  resources :line_items
  resources :purchases
end
