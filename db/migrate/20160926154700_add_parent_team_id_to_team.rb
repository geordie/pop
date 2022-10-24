class AddParentTeamIdToTeam < ActiveRecord::Migration[4.2]
    def change
        add_column :teams, :parent_team_id, :integer
        add_index  :teams, :parent_team_id, unique: false
    end
end
