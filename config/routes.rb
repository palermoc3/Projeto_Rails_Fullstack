Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'login', to:"welcome#index"
  # Defines the root path route ("/")
  root to: "welcome#index"
end
