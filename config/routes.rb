Rails.application.routes.draw do
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

  get '/', to:'games#index'

  resources :games
  resources :users
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
