class AddObjectiveToWorkItems < ActiveRecord::Migration[4.2]
  def change
    add_column :work_items, :objective, :string
  end
end
