class WateringsController < ApplicationController

  def show
    @plant = Plant.find_by(id: params[:plant_id])
    @watering = Waterings.find_by(id: params[:id])
    # render json: {plant: @plant, watering: @watering}
  end

  # def create
  # end

  def index
    @plant = Plant.find_by(id: params[:plant_id])
    @waterings = @plant.waterings
  end

  # def new
  # end

  private

end
