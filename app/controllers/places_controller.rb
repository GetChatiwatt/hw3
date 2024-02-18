class PlacesController < ApplicationController

  def index
    # find all place rows
    @place = Place.all
    # render places/index view
  end

  def show
    #   # find a Place
        @place = Place.find_by({"id" => params["id"]})
    #   # render places/show view with details about Place
  end

  def new
    #   # render view with new Place form
  end

  def create
    #   # start with a new place
        @place = Place.new
    #   # assign user-entered form data to Place's columns
        @place["name"] = params["name"]
    #   # save Place row
        @place.save
    #   # redirect user
        redirect_to "/places"
     end

end
