class RenameWorkItemKeyColumn < ActiveRecord::Migration[4.2]
  def change
      rename_column :work_items, :key, :item_key
  end
end
