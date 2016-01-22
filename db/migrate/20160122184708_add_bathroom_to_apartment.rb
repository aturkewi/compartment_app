class AddBathroomToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :bathroom, :integer
  end
end
