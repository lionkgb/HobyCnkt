class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.text :description
      t.string :background_image
      t.string :link_to_video
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
