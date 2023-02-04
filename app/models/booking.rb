class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  enum status: %i[pending accepted declined completed]
end
