class CreateRatings < ActiveRecord::Migration
  def change
  	create_table :ratings do |t|
  		t.integer :rating_value, default: 0
  		t.integer :show_id
  		t.timestamps
  	end
  end
end
