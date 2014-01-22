class AddProductIdToMaterial < ActiveRecord::Migration
  def change
    add_column :materials, :product_id, :integer
  end
end
