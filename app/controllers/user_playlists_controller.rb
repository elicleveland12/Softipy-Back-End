class UserPlaylistsController < ApplicationController
  def index
    @user_playlists = UserPlaylist.all
    render json: @user_playlists, status: :OK
  end

  def show
    @user_playlist = UserPlaylist.find(params[:id])
    render json: @user_playlist, status: :OK
  end

  def create
    @user_playlist = UserPlaylist.create(user_playlist_params)
    render json: @user_playlist, status: :created
  end

  def update
    @user_playlist = UserPlaylist.find(params[:id])
    @user_playlist.update(user_playlist_params)
    render json: @user_playlist, status: :OK
  end

  private

  def user_playlist_params
    params.require(:user_playlist).permit(:playlist_id, :user_id)
  end
end
