class CreateJoinTableReservationVideobeam < ActiveRecord::Migration[5.0]
  def change
    create_join_table :reservations, :videobeams do |t|
      # t.index [:reservation_id, :videobeam_id]
      # t.index [:videobeam_id, :reservation_id]
    end
  end
end
