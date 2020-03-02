class CreateRacletteMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :raclette_machines do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.string :price
      t.integer :capacity
      t.string :address
      t.string :name
      t.string :accessories
      t.references :user

      t.timestamps
    end
  end
end
