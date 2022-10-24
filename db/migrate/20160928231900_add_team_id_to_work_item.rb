class AddTeamIdToWorkItem < ActiveRecord::Migration[4.2]
    def change
        add_column :work_items, :team_id, :integer
        add_index  :work_items, :team_id
    end
end
