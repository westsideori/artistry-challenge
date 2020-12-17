Rails.application.routes.draw do
  resources :artists
  resources :instruments
  resources :artist_instruments, only: [:new, :create]

#   post 'artist_instruments/new', to: 'artist_instruments#new'
#   post 'artists/new', to: 'artists#new'
#   post 'instruments/new', to: 'instruments#new'
end
