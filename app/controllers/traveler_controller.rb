class TravelersController < ApplicationController

    get `/travelers` do
        travelers = Traveler.all
        travelers.to_json 
    end

    get `/travelers/:id` do
        traveler = Traveler.find(param[:id])
        traveler.to_json
    end
end