class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(:user == current_user)
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)
    @booking.property = @property
    @booking.total = ((@booking.end - @booking.start) * @property.price).to_f
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path()
    else
      render "properties/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :comment)
  end
end
