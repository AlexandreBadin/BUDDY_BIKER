class BikersController < ApplicationController

  def index
    @bikers = Biker.all
  end

  def show
    @biker = Biker.find(params[:id])
  end
end
