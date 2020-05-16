Rails.application.routes.draw do
  
  resources :cards
  root to: "cards#index", as: 'home_page'
  get 'pages/about', to: 'pages#about', as: 'about_page'
  get 'pages/how_to_use', to: 'pages#how_to_use', as: 'how_to_use_page'
  get 'pages/educators', to: 'pages#educators', as: 'educators_page'
  get 'pages/feedback', to: 'pages#feedback', as: 'feedback_page'
  devise_for :users
  resources :users

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
