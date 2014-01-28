class RemoveByRequestFromItem < ActiveRecord::Migration
  def up
    remove_column :items, :by_request
      end

  def down
    add_column :items, :by_request, :boolean
  end
end
