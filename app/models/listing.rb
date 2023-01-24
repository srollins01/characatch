class Listing < ApplicationRecord
  belongs_to :user
  validates :mascot_name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than: 0 }

  def rate_usd
    "$#{hourly_rate}/hour"
  end
end
