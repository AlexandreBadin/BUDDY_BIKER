class Review < ApplicationRecord
  belongs_to :biker

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5) }, numericality: { message: 'must be a number between 0 and 5'}
end
