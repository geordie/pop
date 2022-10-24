class AddTeamIdToTeamUpdate < ActiveRecord::Migration[4.2]
    def change
        add_column :team_updates, :team_id, :integer
        add_index  :team_updates, :team_id
    end
end
