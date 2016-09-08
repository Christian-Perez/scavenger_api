class PlayerObjective < ApplicationRecord
  belongs_to :hunt
  belongs_to :objective
end
