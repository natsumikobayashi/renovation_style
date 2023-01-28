class CreateFloorImages < ActiveRecord::Migration[6.1]
  def change
    create_table :floor_images do |t|
      t.integer :room_id,   null: false

      t.timestamps
    end
  end
end
