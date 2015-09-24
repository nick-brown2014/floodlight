Rails.application.routes.draw do

  root 'landings#show'

  resources :posts
  resources :videos

end
