class HuntTemplate < ApplicationRecord
  has_many :objectives
  has_many :hunts
end
