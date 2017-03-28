class AddNewAttributesToBookingModel < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :hobby, :string
    add_column :bookings, :description, :text 
    add_column :bookings, :background_image, :string
    add_column :bookings, :link_to_video, :string
  end
end
