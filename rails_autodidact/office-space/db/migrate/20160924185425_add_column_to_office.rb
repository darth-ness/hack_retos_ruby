class AddColumnToOffice < ActiveRecord::Migration[5.0]
  def change
    add_column :offices, :location, :string
  end
end
