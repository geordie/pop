class CreateTeamMembers < ActiveRecord::Migration[4.2]
  def change
    create_table :team_members do |t|
      t.integer :team_id
      t.integer :person_id

      t.timestamps
    end
  end
end
