class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true
end
