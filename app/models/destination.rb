class Destination < ActiveRecord::Base
    has_many :trips
    has_many :travelers, through: :trips
    has_many :favorites
    has_many :favorite_travelers, through: :favorites, class_name: "Traveler"

end
