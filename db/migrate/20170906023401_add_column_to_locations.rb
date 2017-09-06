class AddColumnToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :lat_string, :string
    add_column :locations, :lng_string, :string
  end
end
