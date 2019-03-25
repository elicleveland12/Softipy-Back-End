Rails.application.routes.draw do
  resources :user_concerts
  resources :concerts
  resources :songs
  resources :playlists
  resources :user_playlists
  resources :friendships
  resources :users
  get 'users/username'
  get 'users/first_name'
  get 'users/last_name'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
