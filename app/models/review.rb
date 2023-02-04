class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than: 0, less_than: 6 }
end
