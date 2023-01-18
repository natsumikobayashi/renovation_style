class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.text :catchphrase,      null: false
      t.text :user_comment,     null: false
      t.text :owner_comment,    null: false

      t.timestamps
    end
  end
end
