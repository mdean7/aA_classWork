class GardensController < ApplicationController

  def index
    @gardens = Garden.all
    render :index
  end

  def show
    @garden = Garden.find_by(id: params[:id]) #find(params[:id])
    render :show
  end

  def create
    @garden = Garden.new(params.require(:garden).permit(:name, :size, :garden_owner_id))
    if @garden.save
      redirect_to gardens_url
    else
      render :new
    end
  end

end
