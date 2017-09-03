class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string "city"
      t.string "zipcode"
      t.string "address"
      t.string "apt_number"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.decimal "lat", precision: 10, scale: 6
      t.decimal "lng", precision: 10, scale: 6
      t.string "district"
      t.timestamps
    end
  end
end
