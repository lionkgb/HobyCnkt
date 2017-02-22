class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :sessions_per_week
      t.string :days_in_a_week
      t.integer :hours_per_day
      t.time :start_time
      t.time :end_time
      t.integer :fees_per_session
      t.integer :discount_or_offer

      t.timestamps
    end
  end
end
