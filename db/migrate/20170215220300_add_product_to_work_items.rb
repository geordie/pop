class AddProductToWorkItems < ActiveRecord::Migration[4.2]
  def change
    add_column :work_items, :product, :string
  end
end
