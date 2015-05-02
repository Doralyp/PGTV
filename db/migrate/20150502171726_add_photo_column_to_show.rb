class AddPhotoColumnToShow < ActiveRecord::Migration
  def change
    add_column :shows, :photo, :text
  end
end
