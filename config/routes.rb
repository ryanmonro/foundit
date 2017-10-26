Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

  get '/games/:game_id/game_locations/:id', to: 'game_locations#show'

  get '/', to:'games#index'

  post '/api/founds', to: 'api/founds#create'
  get '/api/close_enough', to: 'api/locations#close_enough'

  # get '/gamelocations/:id', to: 'gamelocations#show'

  resources :games
  resources :users
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
