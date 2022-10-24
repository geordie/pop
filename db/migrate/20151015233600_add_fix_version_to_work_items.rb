class AddFixVersionToWorkItems < ActiveRecord::Migration[4.2]
  def change
    add_column :work_items, :fix_version, :string
  end
end
