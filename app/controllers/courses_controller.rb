class CoursesController < ApplicationController
  def index 
    @courses = Course.all
  end 

  def show 
    @course = Course.find_by(id: params[:id])
  end 

  def new
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
