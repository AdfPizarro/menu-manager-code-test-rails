Rails.application.routes.draw do
  resources :menus
  resources :dishes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :menus, only: [:index], controller: 'api', defaults: { format: 'json' }
    end
  end

  # Defines the root path route ("/")
  root 'menus#index'
end
