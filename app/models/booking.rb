class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :review
  enum status: %i[pending accepted declined completed]
end
