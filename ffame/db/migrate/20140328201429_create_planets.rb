class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.references :user, index: true
      t.string :name
      t.string :macaddress
      t.integer :metal
      t.int :crystal
      t.int :solarpowerplant
      t.int :metalmine
      t.int :crystalmine

      t.timestamps
    end
    add_index :planets, :macaddress, unique: true
  end
end
