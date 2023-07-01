class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show]

  def index
    @bookings = Booking.where(:user == current_user)
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Monurental - Booking Reference #{@booking.id}", # Excluding ".pdf" extension.
        page_size: 'A4',
        orientation: "Portrait",
        lowquality: true,
        zoom: 1,
        dpi: 75
      end
    end
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
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end, :comment)
  end
end
