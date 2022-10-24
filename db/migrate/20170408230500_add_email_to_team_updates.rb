class AddEmailToTeamUpdates < ActiveRecord::Migration[4.2]
  def change
    add_column :team_updates, :email, :string
  end
end
