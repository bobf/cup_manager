class CupsController < ApplicationController
  def index
  end

  def create
    @cup = Cup.create!(cup_params)
    redirect_to cups_path
  end

  def show
  end

  def new
  end

  private

  def cup_params
    params.require(:cup).permit(:name, :color, :capacity)
  end
end
