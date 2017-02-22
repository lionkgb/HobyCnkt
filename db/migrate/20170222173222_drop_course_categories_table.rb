class DropCourseCategoriesTable < ActiveRecord::Migration[5.0]
 def up
    drop_table :course_categories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
