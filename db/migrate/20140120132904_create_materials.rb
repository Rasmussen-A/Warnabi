class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :type
      t.float :price
      t.integer :available
      t.boolean :by_request
      t.integer :weight

      t.timestamps
    end
  end
end
