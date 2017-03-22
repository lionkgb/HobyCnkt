class CreateMultipleCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :multiple_courses do |t|
      t.integer :course_id
      t.integer :booking_id
      t.integer :number_of_courses

      t.timestamps
    end
  end
end
