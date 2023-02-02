class AddLatitudelongitudeToListings < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :longtitude, :float
    add_column :listings, :longitude, :float
  end
end
