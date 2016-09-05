class AddPlayersToHunts < ActiveRecord::Migration[5.0]
  def change
    # add player_id reference column to hunts table
    add_reference :hunts, :player, foreign_key: true
  end
end
