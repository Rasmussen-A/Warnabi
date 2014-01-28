class AddMaterialIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :material_id, :integer
  end
end
