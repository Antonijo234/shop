Rails.application.routes.draw do
  root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'
  get 'pages/ads'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
