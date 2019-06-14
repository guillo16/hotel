class BookingsController < ApplicationController
  before_action :set_cars, only: [:new, :create]

  def index
    @bookings = Booking.order(start_date: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to car_path(@car)
    end
  end

def destroy
end

private

def set_cars
  @car = Car.find(params[:car_id])
end

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end
