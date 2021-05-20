class BikersController < ApplicationController

  def index
    if params[:biker].present?
      @bikers = Biker.near(params[:address], 5)
    else
      @bikers = Biker.all
    end
  end

  def show
    @biker = Biker.find(params[:id])
    @booking = Booking.new
  end

  def new
    @biker = Biker.new
  end

  def create
    @biker = Biker.new(params_biker)
    @biker.user = current_user
    if @biker.save
      redirect_to users_dashboard_path
    else
      render :new
    end
  end

  def edit
    @biker = Biker.find(params[:id])
  end

  def update
    @biker = Biker.find(params[:id])
    @biker.update(params_biker)
    redirect_to users_dashboard_path
  end

  def destroy
    @biker = Biker.find(params[:id])
    @biker.destroy
    redirect_to users_dashboard_path
  end

  private

  def params_biker
    params.require(:biker).permit(:pseudo, :address, :price, :description, :date)
  end
end
