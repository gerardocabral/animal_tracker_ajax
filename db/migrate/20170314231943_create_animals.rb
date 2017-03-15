class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :common
      t.string :latin
      t.string :kingdom

      t.timestamps null: false
    end
  end
end
