class AddLatlongToListings < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :lat, :float
    remove_column :listings, :lng, :float
    add_column :listings, :latitude, :float
    add_column :listings, :longtitude, :float
  end
end
