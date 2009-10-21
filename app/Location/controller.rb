require 'rho/rhocontroller'

class LocationController < Rho::RhoController

  #GET /Location
  def index
    @locations = Location.find(:all)
    render
  end

  # GET /Location/{1}
  def show
    @location = Location.find(@params['id'])
    render :action => :show
  end

  # GET /Location/new
  def new
    @location = Location.new
    render :action => :new
  end

  # GET /Location/{1}/edit
  def edit
    @location = Location.find(@params['id'])
    render :action => :edit
  end

  # POST /Location/create
  def create
    @location = Location.new(@params['location'])
    @location.save
    redirect :action => :index
  end

  # POST /Location/{1}/update
  def update
    @location = Location.find(@params['id'])
    @location.update_attributes(@params['location'])
    redirect :action => :index
  end

  # POST /Location/{1}/delete
  def delete
    @location = Location.find(@params['id'])
    @location.destroy
    redirect :action => :index
  end
end
