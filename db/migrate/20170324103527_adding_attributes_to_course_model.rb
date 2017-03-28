class AddingAttributesToCourseModel < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :sessions_per_week, :integer
    add_column :courses, :hours_per_day, :integer
    add_column :courses, :start_time, :time
    add_column :courses, :end_time, :time
    add_column :courses, :fees_per_session, :integer
    add_column :courses, :discount_or_offer, :integer
    add_column :courses, :hobby, :string
    add_column :courses, :description, :text
    add_column :courses, :background_image, :string
    add_column :courses, :link_to_video, :string
    add_column :courses, :longitude, :float
    add_column :courses, :latitude, :float
    add_column :courses, :address, :string
  end
end
