class BikersController < ApplicationController

  # def index
  #   @bikers = Biker.all
  # end

  def index
    if params[:biker].present?
      @bikers = Biker.search()
    else
      @bikers = Biker.all
    end
  end

  def show
    @biker = Biker.find(params[:id])
  end
end
