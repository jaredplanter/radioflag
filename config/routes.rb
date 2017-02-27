Rails.application.routes.draw do
  root "search#index"
  resources :artists, only: [:show]
  resources :albums, only: [:show]
  get "search", to: "search#results"
end
