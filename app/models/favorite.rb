class Favorite < ActiveRecord::Base
    belongs_to :traveler
    belongs_to :destination

    def all_traveler_favorites
    
    end

    def all_destination_favorites
    
    end
end
