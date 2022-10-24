class AddDatesToWorkItems < ActiveRecord::Migration[4.2]
  def change
    add_column :work_items, :updated, :datetime
    add_column :work_items, :created, :datetime
  end
end
