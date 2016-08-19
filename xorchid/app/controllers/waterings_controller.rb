class WateringsController < ApplicationController

  before_action :set_plant, only: [:show, :edit, :destroy]

  def index
    @plant = Plant.find_by(id: params[:plant_id])
    @waterings = @plant.waterings
  end

  def show
    @plant = Plant.find_by(id: params[:plant_id])
    @watering = Waterings.find_by(id: params[:id])
    # render json: {plant: @plant, watering: @watering}
  end

  def new
  end

  def create
    @watering = Watering.new(watering_params)
    respond_to do |format|
      if @watering.save
        format.html { redirect_to watering_path(@watering) }
        format.json { render :watering }
      else
        # is this correct error handling?
        format.html { render :new }
        format.json { render json: @watering.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def watering_params
    params.require(:watering).permit(:water_date)

  end

end
