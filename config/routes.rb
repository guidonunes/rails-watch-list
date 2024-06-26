Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  get 'bookmarks/new'
  get 'bookmarks/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index new show create destroy] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]

  resources :movies, only: %i[index show]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "lists#index"
end
