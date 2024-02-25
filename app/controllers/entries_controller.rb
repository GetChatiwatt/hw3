class EntriesController < ApplicationController

  def show
    # find an entry
      @entry = Entry.find_by({"id" => params["id"]})
      @place = Place.find_by({"id" => @entry["place_id"]})
    # render places/show view with details about Place
  end

  def new
    # render view with new Entry form
    @place = Place.find_by({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["posted_on"] = params["posted_on"]
    @entry["description"] = params["description"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
    end

end
