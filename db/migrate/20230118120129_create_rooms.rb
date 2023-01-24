class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.text :catchphrase,      null: false
      t.text :user_comment,     null: false
      t.text :owner_comment,    null: false
      t.references :manager,    null: false
      t.references :taste_tag,  null: false
      t.references :floor_plan, null: false

      t.timestamps
    end
  end
end
