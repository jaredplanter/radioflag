Rails.application.routes.draw do
  root "search#index"
  get "search", to: "search#results"
  get "artists/:id", to: "artists#albums"
  get "artists/:id/albums/:album_id", to: "artists#album_tracks"
end
