class RemoveMultipleCourseModel < ActiveRecord::Migration[5.0]
  def up
    drop_table :multiple_courses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
