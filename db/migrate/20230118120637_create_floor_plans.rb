class CreateFloorPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :floor_plans do |t|
      t.string :floor_name,     null: false

      t.timestamps
    end
  end
end
