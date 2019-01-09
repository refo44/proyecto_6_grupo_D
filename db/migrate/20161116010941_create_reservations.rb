class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true, null: false
      t.references :meeting_room, foreign_key: true
      t.date :start_hour, null: false
      t.date :end_hour, null: false
      t.text :description

      t.timestamps
    end
  end
end
