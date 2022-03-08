Rails.application.routes.draw do
  resources :payments
  resources :subitems
  resources :features
  resources :usages
  resources :subscriptions
  resources :merchants
  root 'pages#home'
  get 'about', to: 'pages#about'
end
