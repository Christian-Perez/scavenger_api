class CreateHuntTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :hunt_templates do |t|
      t.string :name
      t.text :description
      t.integer :duration_min
      t.references :objectives, foreign_key: true

      t.timestamps
    end
  end
end
