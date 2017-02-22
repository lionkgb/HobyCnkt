class AddOrganizationIdToCourseModel < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :organization_id, :integer
  end
end
