Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  resources :songs, only: [:index, :show]

  get '/users/:user_id/songs', to: 'user_song_data#index'
  get '/users/:user_id/songs/:song_id', to: 'user_song_data#show'
  patch '/users/:user_id/songs/:song_id/play', to: 'user_song_data#play'
  patch '/users/:user_id/songs/:song_id/like', to: 'user_song_data#like'
  patch '/users/:user_id/songs/:song_id/dislike', to: 'user_song_data#dislike'
end
