Rails.application.routes.draw do
  resources :job_listings
  resources :employers
  resources :employees
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
