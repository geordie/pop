class RemoveTeamFromTeamUpdate < ActiveRecord::Migration[4.2]
    def change
        remove_column :team_updates, :team
    end
end
