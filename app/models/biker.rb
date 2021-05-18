class Biker < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :pseudo, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
