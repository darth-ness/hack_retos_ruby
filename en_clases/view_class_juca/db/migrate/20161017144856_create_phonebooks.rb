class CreatePhonebooks < ActiveRecord::Migration[5.0]
  def change
    create_table :phonebooks do |t|
      t.string :name
      t.string :lastname
      t.string :tel_number
      t.string :email
      t.date :birthday
      t.integer :gender

      t.timestamps
    end
  end
end
