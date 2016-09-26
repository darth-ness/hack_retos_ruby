class AddColumnToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :location, :string
  end
end
