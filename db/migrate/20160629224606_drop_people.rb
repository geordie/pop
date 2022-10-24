class DropPeople < ActiveRecord::Migration[4.2]
    def up
        drop_table :people
    end

    def down
        create_table :people do |t|
          t.string   :name
          t.string   :email
          t.string   :avatar
          t.string   :avatar_lg
          t.string   :remote_id

          t.timestamps
        end
    end
end
