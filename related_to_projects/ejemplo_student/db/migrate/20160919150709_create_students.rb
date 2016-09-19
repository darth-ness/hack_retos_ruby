class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :identity
      t.string :name
      t.references :class_room, foreign_key: true

      t.timestamps
    end
  end
end
