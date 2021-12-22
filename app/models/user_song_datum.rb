class UserSongDatum < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :song, foreign_key: :song_id
end
