class CreateObjectives < ActiveRecord::Migration[5.0]
  def change
    create_table :objectives do |t|
      t.string :name
      t.text :description
      t.string :answer
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
