class AddCoordinatesToThings < ActiveRecord::Migration[5.2]
  def change
    add_column :things, :latitude, :float
    add_column :things, :longitude, :float
  end
end
