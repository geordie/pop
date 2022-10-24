class AddMoreInfoToProjects < ActiveRecord::Migration[4.2]
  def change
  	add_column :projects, :more_info, :string
  end
end
