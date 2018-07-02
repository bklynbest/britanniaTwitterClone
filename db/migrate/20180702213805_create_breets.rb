class CreateBreets < ActiveRecord::Migration
  def change
    create_table :breets do |t|
      t.text :breet

      t.timestamps null: false
    end
  end
end
