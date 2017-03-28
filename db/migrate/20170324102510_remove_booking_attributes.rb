class RemoveBookingAttributes < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :number_of_sessions, :integer
    add_column :bookings, :total_amount, :integer
    remove_column :bookings, :sessions_per_week, :integer
    remove_column :bookings, :hours_per_day, :integer
    remove_column :bookings, :start_time, :time
    remove_column :bookings, :end_time, :time
    remove_column :bookings, :fees_per_session, :integer
    remove_column :bookings, :discount_or_offer, :integer
    remove_column :bookings, :hobby, :string
    remove_column :bookings, :description, :text
    remove_column :bookings, :background_image, :string
    remove_column :bookings, :link_to_video, :string
    remove_column :bookings, :longitude, :float
    remove_column :bookings, :latitude, :float
    remove_column :bookings, :address, :string
  end
end
