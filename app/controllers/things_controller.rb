class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :destroy]

  def index
    @things = Thing.all
  end

  def show
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new(thing_params)
    @thing.owner = current_user
    if @thing.save
      redirect_to thing_path(@thing)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @thing.destroy
    redirect_to things_path
  end

  private

  def thing_params
    params.require(:thing).permit(:title, :description, :photo, :price, :street, :zip_code, :city, :country, :category, :days_nb_min, :days_nb_max, :starting_available_date, :ending_available_date)
  end

  def set_thing
    @thing = Thing.find(params[:id])
  end
end
