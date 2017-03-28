class AddAttributeToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :day_id, :integer
  end
end
