class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :actor_id, null: false
      t.integer :show_id, null: false
      t.string  :name, null: false

      t.timestamps
    end
  end
end
