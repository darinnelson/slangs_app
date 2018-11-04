class ChangePasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password_digest, :password
    add_column :users, :password_confirmation, :string
  end
end
