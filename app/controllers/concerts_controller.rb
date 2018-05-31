class ConcertsController < ApplicationController
  before_filter :authenticate_user!
  before_action :find_concert, only: [:show, :edit, :update, :destroy]

  def index
    @concerts = Concert.all.order("date")
  end

  def show
  end

  def new
    @concert = Concert.new
  end

  def edit
  end

  def create
    @concert = Concert.new(concert_params)
    if @concert.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
    if @concert.update(concert_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @concert.destroy
    redirect_to root_path
  end

  

  private

    def concert_params
      params.require(:concert).permit(:title, :location, :date, :concert_img)
    end

    def find_concert
      @concert = Concert.find(params[:id])
    end

end
