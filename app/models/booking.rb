class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :biker

  validates :date, presence: true
  validates :booking_price, presence: true
  enum status: {pending: 0, accepted: 1, refused: 2}
end
