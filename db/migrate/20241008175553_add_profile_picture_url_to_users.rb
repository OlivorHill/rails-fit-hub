class AddProfilePictureUrlToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :profile_picture_url, :text
  end
end
