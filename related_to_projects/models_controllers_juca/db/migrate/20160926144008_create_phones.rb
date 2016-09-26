class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :phone_number, limit: 10
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
