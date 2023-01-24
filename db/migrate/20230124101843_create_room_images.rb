class CreateRoomImages < ActiveRecord::Migration[6.1]
  def change
    create_table :room_images do |t|
      t.integer :room_id, null: false
      t.string :genre

      t.timestamps
    end
  end
end
