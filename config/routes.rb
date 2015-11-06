Rails.application.routes.draw do
  resources :tweets
  root to: "tweets#index"

  get '/auth/:provider/callback', to: 'sessions#create'
  post '/search', to: 'tweets#search', as: 'search'
end
