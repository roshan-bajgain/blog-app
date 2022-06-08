Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "posts#index"

  # root "posts#index"

  # get "/users", to: "users#index"
  # get "/users/:id/posts", to: "posts#index"
  # get "/users/:id", to: "posts#show"
  # get "/users/:id/posts/:id", to: "posts#post"

  resources :users, only: [:show, :index] do
    resources :posts, only: [:show, :index, :create, :new] do
      resources :comments, only: [:create, :new]
      resources :likes, only: [:create]
      end
  end
end
