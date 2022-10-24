class AddAvatarLgToPeople < ActiveRecord::Migration[4.2]
  def change
    add_column :people, :avatar_lg, :string
  end
end
