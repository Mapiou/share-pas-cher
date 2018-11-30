class ChangeColumnToBookings < ActiveRecord::Migration[5.2]
  def change
  	change_column :bookings, :arrival_date, :date
    change_column :bookings, :departure_date, :date
  end
end
