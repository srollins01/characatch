class Review < ApplicationRecord
  belongs_to :listing
  belongs_to :user

  validates :content, presence: true
end
