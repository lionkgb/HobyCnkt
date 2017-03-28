class CoursesController < ApplicationController
  before_filter :authorize
  def index 
    if params[:category]
      @courses = Category.find_by(name: params[:category]).courses
    else 
      @courses = Course.all
    end
  end 

  def show 
    @course = Course.find_by(id: params[:id])
  end 

  def new
    @days = Day.all
    @categories = Category.all
    @course = Course.new
  end 

  def search 
    search_query = params[:search_input]
    @courses = Course.where("hobby LIKE ? OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @courses.empty?
      flash[:info] = "No results found in search"
    end
    render :index
  end

  def create 
    @course = Course.new({
      name: params[:name],
      address: params[:address],
      longitude: params[:longitude],
      latitude: params[:latitude],
      phone_number: params[:phone_number],
      hobby: params[:hobby], 
      description: params[:description], 
      link_to_video: params[:link_to_video], 
      background_image: params[:background_image], 
      sessions_per_week: params[:sessions_per_week],
      hours_per_day: params[:hours_per_day],
      start_time: params[:start_time],
      end_time: params[:end_time],
      fees_per_session: params[:fees_per_session],
      discount_or_offer: params[:discount_or_offer],
      day_id: params[:day_id],
      category_id: params[:category_id],
      })
    if @course.save
       day_ids = params[:day_ids]
       day_ids.each do |day_id|
         course_day = CourseDay.new(course_id: @course.id, day_id: day_id)
         course_day.save
       end
    else  
      @categories = Category.all 
      render :new
    end
    redirect_to "/courses/#{@course.id}"
  end 

  def edit 
    @days = Day.all 
    @categories = Category.all
    @course = Course.find_by(id: params[:id])
  end
  
  def update
    @course = Course.find_by(id: params[:id])
    @course.assign_attributes({
      name: params[:name],
      address: params[:address],
      longitude: params[:longitude],
      latitude: params[:latitude],
      phone_number: params[:phone_number],
      hobby: params[:hobby], 
      description: params[:description], 
      link_to_video: params[:link_to_video], 
      background_image: params[:background_image], 
      sessions_per_week: params[:sessions_per_week],
      hours_per_day: params[:hours_per_day],
      start_time: params[:start_time],
      end_time: params[:end_time],
      fees_per_session: params[:fees_per_session],
      discount_or_offer: params[:discount_or_offer],
      day_id: params[:day_id],
      category_id: params[:category_id]
      })
    if @course.save
      redirect_to "/courses/#{@course.id}"
    else
      @days = Day.all 
      @categories = Category.all 
      render :edit
    end 
  end 

  def destroy 
    @course = Course.find_by(id: params[:id])
    @course.destroy
    flash[:danger] = "Hobby class deleted"
    redirect_to "/"
  end
end
