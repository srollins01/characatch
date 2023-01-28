class AddImageAndLatLngToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :image_url, :string
    add_column :listings, :lat, :float
    add_column :listings, :lng, :float
  end
end
