class SongsController < ApplicationController
  def index
    render json: Song.all
  end

  def show
    @song = Song.find_by(id: params[:id])
    render json: @song
  end
end
