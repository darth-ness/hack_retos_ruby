class AddFielddToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :string
    add_column :users, :phone, :integer
    add_column :users, :dni, :string
  end
end
