Rails.application.routes.draw do
  root "search#index"
  get "search", to: "search#results"
end
