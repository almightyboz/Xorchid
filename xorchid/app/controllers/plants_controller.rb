class PlantsController < ApplicationController

  # before_action :set_plant, only: [:show, :edit, :destroy]

  def index
    @plants = Plant.all
  end

  def create
    @plant = Plant.new(plant_params)
    respond_to do |format|
      if @plant.save
        format.html { redirect_to plant_path(@plant) }
        format.json { render :plant }
      else
        # is this correct error handling?
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def edit
  end

  def update
  end

  private

  def set_plant
  end

  def plant_params
    params.require(:plant).permit(:name, :birthday)
  end

end
