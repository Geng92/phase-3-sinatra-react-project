class TripsController < ApplicationController
    
    get "/trips" do
        Trip.includes(:traveler, :destination).map do |trip| 
            {
            date: trip.date, 
            traveler: trip.traveler.attributes, 
            destination: trip.destination.attributes
            }
        end.to_json 
    end

    get "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.to_json
    end

    post "/trips" do 
        trip = Trip.create(params)
        trip.to_json
    end

    patch "/trips:id" do
        trip = Trip.find(params[:id])
        trip.update(date: params[:date])
        trip.to_json
    end

    delete "/trips:id" do 
        trip = Trip.find(params[:id])
        trip.destroy
    end
end