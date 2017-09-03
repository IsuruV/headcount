class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :device_unique_id, :string
    add_column :users, :manufacturer, :string
    add_column :users, :brand, :string
    add_column :users, :model, :string
    add_column :users, :device_id, :string
    add_column :users, :system_name, :string
    add_column :users, :system_version, :string
    add_column :users, :bundle_id, :string
    add_column :users, :build_number, :integer
    add_column :users, :version, :string
    add_column :users, :readable_version, :string
    add_column :users, :device_name, :string
    add_column :users, :user_agent, :string
    add_column :users, :device_locale, :string
    add_column :users, :device_country, :string
    add_column :users, :time_zone, :string
    add_column :users, :instance_id_android, :string
    add_column :users, :is_emulator, :boolean
    add_column :users, :is_tablet, :boolean
    add_column :users, :pin_or_finder, :string
  end
end
