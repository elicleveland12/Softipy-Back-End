class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
    render json: @playlists, status: :OK
  end

  def show
    @playlist = Playlist.find(params[:id])
    render json: @playlist, status: :OK
  end

  def create
    @playlist = Playlist.create(playlist_params)
    render json: @playlist, status: :created
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    render json: @playlist, status: :OK
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    render json: @playlist, status: :deleted
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
