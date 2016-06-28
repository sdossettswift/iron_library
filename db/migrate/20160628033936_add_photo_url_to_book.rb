class AddPhotoUrlToBook < ActiveRecord::Migration
  def change
    add_column :books, :photo_url, :string
  end
end
