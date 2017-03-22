class CoursesController < ApplicationController
  before_filter :authorize
  def index 
    @courses = Course.all
    if params[:category]
      @courses = Category.find_by(name: params[:category]).courses
    end
  end 

  def show 
    @course = Course.find_by(id: params[:id])
  end 

  def new
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
      hobby: params[:hobby], 
      description: params[:description], 
      link_to_video: params[:link_to_video], 
      background_image: params[:background_image]})
    @course.save
    flash[:success] = "Hobby class created"
    redirect_to "/courses/#{@course.id}"
  end 

  def edit 
    @course = Course.find_by(id: params[:id])
  end
  
  def update
    @course = Course.find_by(id: params[:id])
    @course.assign_attributes({
      hobby: params[:hobby], 
      description: params[:description], 
      link_to_video: params[:link_to_video], 
      background_image: params[:background_image],
      })
    @course.save
    flash[:success] = "Hobby class updated"
    redirect_to "/courses/#{@course.id}"
  end 

  def destroy 
    @course = Course.find_by(id: params[:id])
    @course.destroy
    flash[:danger] = "Hobby class deleted"
    redirect_to "/courses"
  end
end
