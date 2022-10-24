class RemoveProjectSourceFromProject < ActiveRecord::Migration[4.2]
    def change
      remove_column :projects, :project_source_id
    end
end
