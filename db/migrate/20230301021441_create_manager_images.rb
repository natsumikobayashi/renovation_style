class CreateManagerImages < ActiveRecord::Migration[6.1]
  def change
    create_table :manager_images do |t|
      t.references :manager, null: false

      t.timestamps
    end
  end
end
