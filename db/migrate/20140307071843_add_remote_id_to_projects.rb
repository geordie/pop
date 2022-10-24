class AddRemoteIdToProjects < ActiveRecord::Migration[4.2]
  def change
  	add_column :projects, :remote_id, :string
  end
end
