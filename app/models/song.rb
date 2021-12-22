class Song < ApplicationRecord
  has_many :user_song_data
  has_many :users, :through => :user_song_data
end
