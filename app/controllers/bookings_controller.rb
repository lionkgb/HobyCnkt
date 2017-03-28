class BookingsController < ApplicationController
  def show 
    @booking = Booking.find_by(id: params[:id])
  end 

  def update 
    booking = Booking.find_by(id: params[:id])
    
end
