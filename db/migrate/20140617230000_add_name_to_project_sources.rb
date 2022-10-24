class AddNameToProjectSources < ActiveRecord::Migration[4.2]
  def change
    add_column :project_sources, :name, :string
  end
end