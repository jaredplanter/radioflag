Rails.application.routes.draw do
  root "search#index"
  get "search", to: "search#results"
  get "artists/:id", to: "artists#albums"
  get "albums/:id", to: "albums#tracks"
end
