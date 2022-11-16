class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :traveler_id
      t.integer :destination_id
    end
  end
end
