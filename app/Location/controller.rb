require 'rho/rhocontroller'

class LocationController < Rho::RhoController

  # GET /Location/new
  def new
    @location = Location.new(:latitude => GeoLocation.latitude, :longitude => GeoLocation.longitude)
    render :action => :new
  end
  
  def show_map
    MapView.create(
      :settings => {:map_type => "hybrid", :region => [@params['latitude'], @params['longitude'], 0.2, 0.2],
                    :zoom_enabled => true, :scroll_enabled => true, :shows_user_location => false},
      :annotations => [{:latitude => @params['latitude'], :longitude => @params['longitude'], 
                        :title => "Current location", :subtitle => ""}]
    )
    redirect :action => :new
  end
  
end
