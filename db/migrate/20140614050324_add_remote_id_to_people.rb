class AddRemoteIdToPeople < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :remote_id, :string
  end
end
