class CreatePeople < ActiveRecord::Migration[4.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :avatar

      t.timestamps
    end
  end
end
