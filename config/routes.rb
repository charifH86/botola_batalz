Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :leagues do
    member do
      post :start_league
    end
    resources :teams, only: [:create, :new, :update]
    member do
      post 'update'
    end
    resources :games, only: :index
  end
  resources :teams, only: [:show, :update, :delete]
  patch "/removefromteam/:id", to: "teams#remove_player"


  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/ranking" , to: "games#ranking"
end
