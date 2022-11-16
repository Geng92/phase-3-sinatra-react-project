class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.integer :date
      t.integer :traveler_id
      t.integer :destination_id
    end
  end
end
