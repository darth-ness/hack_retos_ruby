class RemoveColumnFromEmployee < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :location, :string
  end
end
