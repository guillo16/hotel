class BookingsController < ApplicationController
  before_action :set_cars, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking).order(start_date: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car

    if @booking.save
      redirect_to bookings_path(@booking)

    else
      redirect_to car_path(@car)
      flash[:alert] = "error chose good your dates"
      authorize @booking
    end
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
    flash[:notice] = "Your Booking has been removed."
    authorize @booking
  end

 private

  def set_cars
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
