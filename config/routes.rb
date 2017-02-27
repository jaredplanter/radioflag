Rails.application.routes.draw do
  root "search#index"
  resources :artists, only: [:show]
  get "albums/:id", to: "albums#tracks"
  get "search", to: "search#results"
end
