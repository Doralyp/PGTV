class AddPhotoColumnToChannel < ActiveRecord::Migration
  def change
      add_column :channels, :photo, :text
  end
end
