class CreateVideobeams < ActiveRecord::Migration[5.0]
  def change
    create_table :videobeams do |t|
      t.string :code

      t.timestamps
    end
  end
end
