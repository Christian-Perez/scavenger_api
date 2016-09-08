class CreatePlayerObjectives < ActiveRecord::Migration[5.0]
  def change
    create_table :player_objectives do |t|
      t.boolean :completed
      t.references :hunt, foreign_key: true
      t.references :objective, foreign_key: true

      t.timestamps
    end
  end
end
