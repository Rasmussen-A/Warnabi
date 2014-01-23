class RemoveTypeFromItem < ActiveRecord::Migration
  def up
    remove_column :items, :type
      end

  def down
    add_column :items, :type, :string
  end
end
