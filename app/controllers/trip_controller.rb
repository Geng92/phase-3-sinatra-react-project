class TripsController < ApplicationController
    
    get `/trips` do
        trips = Trip.all
        trips.to_json 
    end

    get `/trips/:id` do
        trip = Trip.find(param[:id])
        trip.to_json
    end
end