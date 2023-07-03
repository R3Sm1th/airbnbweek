class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :photos, presence: true
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  def next_available
    @property = self
    @bookings = Booking.where(property: @property)
    next_booking = @bookings.where("start > ?", Date.today).order(:start).first
    return Date.tomorrow.strftime("%b %e")..next_booking.start.strftime("%b %e") if next_booking.present?

    Date.tomorrow.strftime("%b %e")..Date.today.end_of_year.strftime("%b %e")
  end
end
