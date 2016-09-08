class Objective < ApplicationRecord
  belongs_to :hunt_template
  has_many :player_objectives
end
