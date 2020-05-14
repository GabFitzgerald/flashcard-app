Rails.application.routes.draw do
  
  get 'pages/home'
  get 'pages/about'
  get 'pages/how_to_use'
  get 'pages/educators'
  get 'pages/feedback'
  devise_for :users
  resources :users
  root to: "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
