class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :photos, presence: true
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
