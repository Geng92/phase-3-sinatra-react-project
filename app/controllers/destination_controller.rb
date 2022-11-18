class DestinationsController < ApplicationController
    get "/destinations" do
        destinations = Destination.all
        destinations.to_json 
    end

    get "/destinations/:id" do
        destination = Destination.find(params[:id])
        destination.to_json(includes: :favorite_travelers)
    end

    patch "/destinations:id" do
       destination = Destination.find(params[:id])
       destination.update(visited: params[:visited])
       destination.to_json
    end

    post "/destinations" do 
        Destination.create(params)
    end
end