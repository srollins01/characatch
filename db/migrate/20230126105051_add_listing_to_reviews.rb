class AddListingToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :listing, null: false, foreign_key: true
  end
end
