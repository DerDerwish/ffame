class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :password
      t.string :email
      t.boolean :active
      t.boolean :blocked
      t.boolean :verified

      t.timestamps
    end
  end
end
