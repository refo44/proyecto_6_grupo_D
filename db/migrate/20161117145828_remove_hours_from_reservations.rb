class RemoveHoursFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :start_hour, :date
    remove_column :reservations, :end_hour, :date
  end
end
