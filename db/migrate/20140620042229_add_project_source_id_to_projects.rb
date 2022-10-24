class AddProjectSourceIdToProjects < ActiveRecord::Migration[4.2]
  def change
    add_column :projects, :project_source_id, :integer
  end
end
