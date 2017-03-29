class AddAndRemoveColumnsInBookingModel < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :first_name, :string
    add_column :bookings, :last_name, :string
    add_column :bookings, :sex, :string
    add_column :bookings, :phone_number, :string
    add_column :bookings, :email, :string
    remove_column :bookings, :number_of_sessions, :integer
    remove_column :bookings, :total_amount, :integer
    add_column :bookings, :total_amount, :integer
  end
end
