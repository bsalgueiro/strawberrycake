class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :access_token, :string
    add_column :users, :uid, :string 
    add_column :users, :photo_url, :string 
    add_column :users, :provider, :string
  end
end
