class AddAttributesToTheCourseModel < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :name,  :string
    add_column :courses, :phone_number, :string
    remove_column :courses, :organization_id, :integer 
  end
end
