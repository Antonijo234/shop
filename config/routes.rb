Rails.application.routes.draw do
  devise_for :installs
  root to: 'pages#index'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/add'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
