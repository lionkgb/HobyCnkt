class CreateCourseDays < ActiveRecord::Migration[5.0]
  def change
    create_table :course_days do |t|
      t.integer :course_id
      t.integer :day_id

      t.timestamps
    end
  end
end
