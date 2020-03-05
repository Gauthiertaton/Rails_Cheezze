class AddCoordinatesToRacletteMachines < ActiveRecord::Migration[5.2]
  def change
    add_column :raclette_machines, :latitude, :float
    add_column :raclette_machines, :longitude, :float
  end
end
