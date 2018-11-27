class ThingsController < ApplicationController
before_action :set_thing, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    if @thing.update(thing_params)
      redirect_to thing_path(@thing)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def thing_params
    params.require(:thing).permit(:title, :description, :photo, :price, :street, :zip_code, :city, :country, :category, :days_nb_min, :days_nb_max, :starting_available_date, :ending_available_date)
  end

  def set_thing
    @thing = Thing.find(params[:id])
  end

end
