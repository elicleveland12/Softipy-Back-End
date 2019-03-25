class SongsController < ApplicationController
  def index
    @songs = Song.all
    render json: @songs, status: :OK
  end

  def show
    @song = Song.find(params[:id])
    render json: @song, status: :OK
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist, :genre, :playlist_id)
  end
end
