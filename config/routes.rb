Rails.application.routes.draw do

  get 'sessions/new'

  root 'landings#show'

  resources :posts
  resources :videos
  resources :users
  resources :links
  resources :messages

end
