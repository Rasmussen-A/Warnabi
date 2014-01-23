class RenameMaterialModel < ActiveRecord::Migration
  def change
    rename_table :materials, :items
  end
end
