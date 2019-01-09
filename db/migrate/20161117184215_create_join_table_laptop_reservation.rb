class CreateJoinTableLaptopReservation < ActiveRecord::Migration[5.0]
  def change
    create_join_table :laptops, :reservations do |t|
      # t.index [:laptop_id, :reservation_id]
      # t.index [:reservation_id, :laptop_id]
    end
  end
end
