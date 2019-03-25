class UserConcertsController < ApplicationController
  def index
    @user_concerts = UserConcert.all
    render json: @user_concerts, status: :OK
  end

  def show
    @user_concert = UserConcert.find(params[:id])
    render json: @user_concert, status: :OK
  end

  def create
    @user_concert = UserConcert.create(user_concert_params)
    render json: @user_concert, status: :created
  end

  def update
    @user_concert = UserConcert.find(params[:id])
    @user_concert.update(user_concert_params)
    render json: @user_concert, status: :OK
  end

  private

  def user_concert_params
    params.require(:user_concert).permit(:concert_id, :user_id)
  end
end
