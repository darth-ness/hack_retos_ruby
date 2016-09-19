class CreateClassRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :class_rooms do |t|
      t.integer :number
      t.integer :capacity

      t.timestamps
    end
  end
end
