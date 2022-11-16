class TripsController < ApplicationController
    
    get "/trips" do
        trips = Trip.all
        trips.to_json 
    end

    get "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.to_json
    end
end