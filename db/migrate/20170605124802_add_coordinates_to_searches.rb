class AddCoordinatesToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :latitude, :float
    add_column :searches, :longitude, :float
  end
end
