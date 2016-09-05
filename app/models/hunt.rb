class Hunt < ApplicationRecord
  belongs_to :hunt_template
  belongs_to :player
end
