class CreateHunts < ActiveRecord::Migration[5.0]
  def change
    create_table :hunts do |t|
      t.references :hunt_template, foreign_key: true
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
