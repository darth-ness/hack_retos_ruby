class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :dni, limit: 45
      t.string :name, limit: 45
      t.string :lastname, limit: 45
      t.date :birthday
      t.boolean :car
      t.integer :gender
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
