class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :stree
      t.integer :number
      t.string :apartment
      t.string :state
      t.string :city
      t.integer :zip
      t.integer :floor

      t.timestamps null: false
    end
  end
end
