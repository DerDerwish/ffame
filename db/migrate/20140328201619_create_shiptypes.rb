class CreateShiptypes < ActiveRecord::Migration
  def change
    create_table :shiptypes do |t|
      t.string :name
      t.integer :maxhp
      t.integer :capacity

      t.timestamps
    end
  end
end
