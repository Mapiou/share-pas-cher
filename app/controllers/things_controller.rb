class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @things = policy_scope(Thing).order(created_at: :desc)
  end

  def show
  end

  def new
    @thing = Thing.new
    authorize @thing
  end

  def create
    @thing = Thing.new(thing_params)
    @thing.owner = current_user
    authorize @thing
    if @thing.save
      redirect_to thing_path(@thing)
    else
      render :new
    end
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
    @thing.destroy
    redirect_to things_path
  end

  private

  def thing_params
    params.require(:thing).permit(:title, :description, :photo, :price, :street, :zip_code, :city, :country, :category, :days_nb_min, :days_nb_max, :starting_available_date, :ending_available_date)
  end

  def set_thing
    @thing = Thing.find(params[:id])
    authorize @thing
  end
end
