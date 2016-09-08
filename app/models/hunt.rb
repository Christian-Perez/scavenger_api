class Hunt < ApplicationRecord
  belongs_to :hunt_template
  belongs_to :player
  has_many :player_objectives
end
