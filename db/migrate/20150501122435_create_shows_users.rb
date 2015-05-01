class CreateShowsUsers < ActiveRecord::Migration
  def change
    create_table :shows_users do |t|
      t.integer :user_id, null: false
      t.integer :show_id, null: false

      t.timestamps
    end
  end
end
