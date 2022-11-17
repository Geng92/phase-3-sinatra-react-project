class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :climate
      t.string :image
      t.integer :population
      t.boolean :visited?
    end
  end
end
