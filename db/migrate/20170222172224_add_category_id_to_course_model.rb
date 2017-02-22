class AddCategoryIdToCourseModel < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :category_id, :integer
  end
end
