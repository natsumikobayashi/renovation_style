class AddTasteTagIdToManager < ActiveRecord::Migration[6.1]
  def change
    add_column :managers, :taste_tag_id, :integer
  end
end
