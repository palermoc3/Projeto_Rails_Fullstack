Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  get 'welcome/index'
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'login', to:"site/welcome#index"
  # Defines the root path route ("/")
  root to: "site/welcome#index"
end
