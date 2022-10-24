class AddCustomerFacingToWorkItems < ActiveRecord::Migration[4.2]
  def change
    add_column :work_items, :customer_facing, :boolean, default: true
  end
end
