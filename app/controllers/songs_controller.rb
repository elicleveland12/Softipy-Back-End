class SongsController < ApplicationController
  def index
    @songs = Song.all
    render json: @songs, status: :OK
  end

  def show
    @song = Song.find(params[:id])
    render json: @song, status: :OK
  end

  def create
    @song = Song.create(song_params)
    render json: @song, status: :created
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    render json: @song, status: :deleted
  end

  private

  def song_params
    params.permit(:title, :artist, :cover_art, :playlist_id, :preview)
  end
end
