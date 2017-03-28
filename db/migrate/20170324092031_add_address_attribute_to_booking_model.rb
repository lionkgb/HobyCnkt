class AddAddressAttributeToBookingModel < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :address, :string
    remove_column :bookings, :days_in_a_week, :string
  end
end
