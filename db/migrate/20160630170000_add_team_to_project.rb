class AddTeamToProject < ActiveRecord::Migration[4.2]
    def change
        add_column :projects, :project_handle, :string
        add_column :projects, :team_id, :integer
        add_index  :projects, :team_id
    end
end
