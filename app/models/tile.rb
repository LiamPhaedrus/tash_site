class Tile < ApplicationRecord
  belongs_to :bag
  belongs_to :phrase
  
end
