class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string  :title, null: false
      t.text  :description
      t.string  :air_day
      t.string  :air_time
      t.decimal :rating
      t.integer :channel_id, null: false
      t.integer :genre_id, null: false

      t.timestamps
    end
  end
end
