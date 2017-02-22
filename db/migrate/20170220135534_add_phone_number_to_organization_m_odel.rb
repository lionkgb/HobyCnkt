class AddPhoneNumberToOrganizationMOdel < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :phone_number, :string
  end
end
