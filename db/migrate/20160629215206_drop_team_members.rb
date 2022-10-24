class DropTeamMembers < ActiveRecord::Migration[4.2]
    def up
        drop_table :team_members
    end

    def down
        create_table :team_members do |t|
            t.integer :team_id
            t.integer :person_id

            t.timestamps
        end
    end
end
