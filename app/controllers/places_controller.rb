class PlacesController < ApplicationController

    def index
        @place = Places.all
    end
    
    def show
        @place = Places.find_by({ "id" => params["id"]})
    end

    def new
        @place = Places.new
    end

    def create
        @place = Places.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
    end

end
