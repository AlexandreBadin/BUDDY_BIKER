class Biker < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :pseudo, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
