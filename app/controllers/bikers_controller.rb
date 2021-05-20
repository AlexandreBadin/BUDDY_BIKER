class BikersController < ApplicationController

  # def index
  #   @bikers = Biker.all
  # end

  def index
    if params[:biker].present?
      @bikers = Biker.near(params[:address], 5)
    else
      @bikers = Biker.all
    end
    @markers = @bikers.geocoded.map do |biker|
      {
        lat: biker.latitude,
        lng: biker.longitude,
        info_window: render_to_string(partial: "info_window", locals: { biker: biker })
      }
    end
  end

  def show
    @biker = Biker.find(params[:id])
  end
end
