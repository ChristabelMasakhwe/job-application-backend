Rails.application.routes.draw do
  # resources :job_listings
  # resources :employers
  # resources :employees
  # resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/categories", to: "categories#index"
  get "/categories/:id", to: "categories#show"
  get "/employers", to: "employers#index"
  get "/employees", to: "employees#index"
  get "/job_listings", to: "job_listings#index"
  get "/job_listings/:id", to: "job_listings#show"
  post "/job_listings", to: "job_listings#create"
  patch "/job_listings", to: "job_listings#update"
  delete "/job_listings", to: "job_listings#destroy"
  post "/signup", to: "employees#create"
  post "/signup", to: "employers#create"
  get "/me", to: "employees#show"
  get "/me", to: "employers#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
