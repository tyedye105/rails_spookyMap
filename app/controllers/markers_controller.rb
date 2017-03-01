class MarkersController < ApplicationController
  def index
    @markers = Marker.all
  end

  def new
    @marker = Marker.new
  end

  def create
    @marker = Marker.new(marker_params)
    if @marker.save
      redirect_to markers_path
    else
      render :new
    end
  end

  private
  def marker_params
    params.require(:marker).permit(:name, :latitude, :longitude)
  end

end
