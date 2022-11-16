class Favorite < ActiveRecord::Base
    belongs_to :travelers
    belongs_to :destinations

    def all_traveler_favorites
    
    end

    def all_destination_favorites
    
    end
end
