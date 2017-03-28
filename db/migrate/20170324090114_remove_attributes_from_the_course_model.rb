class RemoveAttributesFromTheCourseModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :description, :text
    remove_column :courses, :background_image, :string
    remove_column :courses, :link_to_video, :string
    remove_column :courses, :latitude, :float
    remove_column :courses, :longitude, :float
    remove_column :courses, :hobby, :string
  end
end
