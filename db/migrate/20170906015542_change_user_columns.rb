class ChangeUserColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :provider, :string, :null => true
    change_column :users, :email, :string, :null => true
    change_column :users, :uid, :string, :null => true
    change_column :users, :encrypted_password, :string, :null => true
  end
end
