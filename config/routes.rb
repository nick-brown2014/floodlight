Rails.application.routes.draw do

  root 'landings#show'

  resources :posts
  resources :videos
  resources :users, only: [:show, :index]

end
