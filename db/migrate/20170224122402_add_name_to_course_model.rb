class AddNameToCourseModel < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :hobby, :string
  end
end
