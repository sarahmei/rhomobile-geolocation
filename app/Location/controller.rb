require 'rho/rhocontroller'

class LocationController < Rho::RhoController

  # GET /Location/new
  def new
    @location = Location.new(:latitude => GeoLocation.latitude, :longitude => GeoLocation.longitude)
    render :action => :new
  end
  
end
