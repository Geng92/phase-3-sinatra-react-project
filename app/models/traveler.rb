class Traveler < ActiveRecord::Base
    has_many :trips
    has_many :destinations, through: :trips
    has_many :favorites    
    has_many :favorite_destinations, through: :favorites, source: :destination  
end