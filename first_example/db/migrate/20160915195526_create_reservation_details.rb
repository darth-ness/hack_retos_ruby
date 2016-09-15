class CreateReservationDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :reservation_details do |t|
      t.references :reservaiion, foreign_key: true
      t.references :vehicle, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
