class Tile < ApplicationRecord
  belongs_to :bag
  belongs_to :phrase

  validates :phrase_id, uniqueness: { scope: :bag_id }
end
