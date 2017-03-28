class AddLongitudeAndLatitudeToBookingModel < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :longitude, :float 
    add_column :bookings, :latitude, :float
  end
end
