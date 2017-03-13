class BookingsController < ApplicationController
  def create 
    course = Courses.find_by(id: params[:course_id])
    sessions_per_week = params[:sessions_per_week].to_i
    days_in_a_week = params[:days_in_a_week].to_i
    hours_per_day = params[:hours_per_day].to_i
    start_time = params[:start_time]
    end_time = params[:end_time]
    fees_per_session = params[:fees_per_session].to_i
    discount_or_offer = params[:discount_or_offer]
    booking = Booking.new(sessions_per_week: sessions_per_week, days_in_a_week: days_in_a_week, hours_per_day: hours_per_day, start_time: start_time, end_time: end_time, fees_per_session: fees_per_session, discount_or_offer: discount_or_offer)
    if booking.save
      flash[:success] = "Already booked"
      redirect_to "/bookings/#{booking.id}"
    else
      redirect_to "/courses/#{course.id}"
    end 
  end
  def show
    @booking = Booking.find_by(id: params[:id])
  end
end
