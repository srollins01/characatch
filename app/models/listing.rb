class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :mascot_name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than: 0 }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def rate_usd
    "$#{hourly_rate}/hour"
  end
end
