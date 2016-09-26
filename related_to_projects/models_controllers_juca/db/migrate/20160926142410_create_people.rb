class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :email, limit: 100
      t.string :password, limit: 45

      t.timestamps
    end
  end
end
