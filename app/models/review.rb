class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  belongs_to :booking
  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than: 0, less_than: 6 }
end
