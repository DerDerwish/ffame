class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.references :user, index: true
      t.reference :shiptype
      t.string :name
      t.string :macaddress
      t.integer :metal
      t.integer :crystal
      t.integer :hp

      t.timestamps
    end
    add_index :ships, :macaddress, unique: true
  end
end
