class RemoveIndexes < ActiveRecord::Migration[5.1]
  def change
    remove_index :users, name: :index_users_on_confirmation_token
    remove_index :users, name: :index_users_on_email
    remove_index :users, name: :index_users_on_reset_password_token
    remove_index :users, name: :index_users_on_uid_and_provider
  end
end
