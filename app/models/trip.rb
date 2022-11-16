class Trip < ActiveRecord::Base
    belongs_to :travelers
    belongs_to :destinations
end