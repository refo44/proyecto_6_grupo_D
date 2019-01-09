class AddHoursToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :start_hour, :datetime
    add_column :reservations, :end_hour, :datetime
  end
end
