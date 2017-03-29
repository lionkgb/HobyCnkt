class OrganizationsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  def index 
    @organizations = Organization.all 
    render "index.html.erb"
  end 

  def new 
  end 

  def show 
    @organization = Organization.find_by(id: params[:id])
  end 

  def create 
    @organization = Organization.new({name: params[:name], phone_number: params[:phone_number], email: params[:email], description: params[:description], website: params[:website]})
    @organization.save
    redirect_to "/organizations/#{@organization.id}"
  end 

  def edit 
    organization = Organization.find_by(id: params[:id])
    organization.name = params[:name]
    organization.phone_number = params[:phone_number]
    organization.email = params[:email]
    organization.website = params[:website]
    organization.save
    redirect_to "/organizations/#{organization.id}"
  end

  def destroy 
    organization = Organizations.find_by(id: params[:id])
    organization.destroy
    redirect_to "/organizations"
  end
end
