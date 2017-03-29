class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :description
      t.string :website
      t.integer :user_id

      t.timestamps
    end
  end
end
