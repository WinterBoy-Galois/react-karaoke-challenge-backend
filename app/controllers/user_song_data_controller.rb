class UserSongDataController < ApplicationController
  def index
    render json: get_users_songs()
  end

  def show
    render json: get_user_song()
  end

  def play
    @song_data = get_user_song_datum()
    @song_data.increment!(:plays, 1)
    render json: get_user_song()
  end

  def like
    @song_data = get_user_song_datum()
    @song_data.increment!(:likes, 1)
    render json: get_user_song()
  end

  def dislike
    @song_data = get_user_song_datum()
    @song_data.increment!(:dislikes, 1)
    render json: get_user_song()
  end

  private

  def get_user_song_datum
    UserSongDatum.find_by(:user_id => params[:user_id], :song_id => params[:song_id])
  end

  def get_users_songs
    Song.select("songs.id, songs.title, songs.singer, songs.lyrics,
      user_song_data.plays, user_song_data.likes, user_song_data.dislikes")
      .joins(:user_song_data)
      .where(:user_song_data => {:user_id => params[:user_id]})
  end

  def get_user_song
    Song.select("songs.id, songs.title, songs.singer, songs.lyrics,
      user_song_data.plays, user_song_data.likes, user_song_data.dislikes")
      .joins(:user_song_data)
      .where(:user_song_data => {:user_id => params[:user_id], :song_id => params[:song_id]})
      .first
  end
end
