Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "start_league", to: "leagues#start_league"
  resources :leagues do
    resources :teams, only: [:create, :new, :update, :show]
    resources :games, only: :index
  end
  resources :teams, only: [:update, :delete]
  patch "/removefromteam/:id", to: "teams#remove_player"


  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "leagues/:league_id/ranking" , to: "games#ranking"
  post "startingsquad/:id/:team_player_id" , to: "leagues#startingsquad"
  post "startleague/:id" , to:"leagues#start_league"
end
