class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.references :hunt, foreign_key: true

      t.timestamps
    end
  end
end
