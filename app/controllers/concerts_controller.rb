class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
    render json: @concerts, status: :OK
  end

  def show
    @concert = Concert.find(params[:id])
    render json: @concert, status: :OK
  end

end
