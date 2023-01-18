class CreateTasteTags < ActiveRecord::Migration[6.1]
  def change
    create_table :taste_tags do |t|
      t.string :name,     null: false

      t.timestamps
    end
  end
end
