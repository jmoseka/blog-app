Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :comments, only: [:new, :create]
  resources :likes, only: [:create]

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create]
  end
end
