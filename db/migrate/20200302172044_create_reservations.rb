class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :reservation_start_date
      t.date :reservation_end_date
      t.string :status
      t.string :total_price
      t.references :user, foreign_key: true
      t.references :raclettemachine, foreign_key: true

      t.timestamps
    end
  end
end
