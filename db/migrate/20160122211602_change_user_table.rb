class ChangeUserTable < ActiveRecord::Migration
  def change
    remove_column :users, :pasword_digest, :string
    add_column :users, :password_digest, :string
  end
end
