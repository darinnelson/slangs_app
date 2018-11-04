class PasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password, :password_digest
    remove_column :users, :password_confirmation, :string
  end
end
