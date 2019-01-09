class AddDayToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :day, :date
  end
end
