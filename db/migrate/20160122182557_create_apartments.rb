class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :user_id
      t.string :listing_url
      t.integer :bedroom
      t.integer :sqr_ft
      t.string :water_pressure
      t.text :notes
      t.integer :price
      t.integer :realtor_fee
      t.integer :rank

      t.timestamps null: false
    end
  end
end
