class AddPhotoColumnToChannel < ActiveRecord::Migration
  def change
      add_column :channels, :photo, :string
  end
end
