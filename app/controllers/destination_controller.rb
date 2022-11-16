class DestinationsController < ApplicationController
    get "/destinations" do
        destinations = Destination.all
        destinations.to_json 
    end

    get "/destinations/:id" do
        destination = Destination.find(params[:id])
        destination.to_json(includes: :favorite_travelers)
    end
end