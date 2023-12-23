Rails.application.routes.draw do
  resources :leagues do
    resources :teams, only: [:create, :new]
    resources :games, only: :index
  end
  resources :teams, only: [:show, :update, :delete]



  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
