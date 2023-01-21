class AddAreaIdToManager < ActiveRecord::Migration[6.1]
  def change
    add_column :managers, :area_id, :integer
  end
end
