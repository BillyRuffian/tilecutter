class HousesController < ApplicationController

  def index
    @houses = House.all.order :name
  end

  def show
    @house = House.friendly.find params[:id]
  end

end
