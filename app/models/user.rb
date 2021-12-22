class User < ApplicationRecord
  has_many :user_song_data
  has_many :songs, :through => :user_song_data
end
