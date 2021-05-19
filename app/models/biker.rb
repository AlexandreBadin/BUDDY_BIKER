class Biker < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :pseudo, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
