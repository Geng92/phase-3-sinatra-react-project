class TravelersController < ApplicationController

    get "/travelers" do
        travelers = Traveler.all
        travelers.to_json 
    end

    get "/travelers/:id" do
        traveler = Traveler.find(params[:id])
        traveler.to_json(include: :favorite_destinations)
    end
end