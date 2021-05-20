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

  private

  def params_biker
    params.require(:biker).permit(:pseudo, :address, :price, :description, :date)
  end
end
