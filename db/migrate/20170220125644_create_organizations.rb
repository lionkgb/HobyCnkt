class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.text :function
      t.integer :user_id

      t.timestamps
    end
  end
end
