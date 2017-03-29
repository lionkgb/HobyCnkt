class BookingsController < ApplicationController
  def index 
    @bookings = Booking.all
    @courses = Course.all
  end 

  def new 
    @booking = Booking.new
    @courses = Course.all
    @course = Course.find_by(id: params[:id])
  end 
  
  def create 
    @booking = Booking.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      sex: params[:sex],
      phone_number: params[:phone_number],
      email: params[:email],
      course_id: params[:course_id]
      })
    redirect_to "/bookings"
  end  
end
