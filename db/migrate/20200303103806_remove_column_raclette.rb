class RemoveColumnRaclette < ActiveRecord::Migration[5.2]
  def change
    remove_column :raclette_machines, :first_name
    remove_column :raclette_machines, :last_name
    remove_column :raclette_machines, :photo
  end
end
