class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :climate
      t.integer :population
    end
  end
end
