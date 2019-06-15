class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cars, only: [:show, :edit, :update, :destroy]
  def index
    @cars = Car.all
  end

  def show

  end


  def new
    @car = Car.new
  end

  def create
   @car = Car.new(cars_params)
   @car.user = current_user
   if @car.save == true
     redirect_to car_path(@car)
   else
    render :new
  end
end


def edit
end

def update
  @car.update(cars_params)
  redirect_to car_path(@car)
end

def destroy
  @car.destroy
  redirect_to cars_path
  flash[:notice] = "Your Car has been removed."
end

private


def cars_params
  params.require(:car).permit(:name, :description, :photo1)
end
def set_cars
  @car = Car.find(params[:id])
  @booking = Booking.new
end
end
