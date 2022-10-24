class CreateProjectSources < ActiveRecord::Migration[4.2]
  def change
    create_table :project_sources do |t|
      t.string :remote_id

      t.timestamps
    end
    add_index :project_sources, :remote_id, unique: true
  end
end
