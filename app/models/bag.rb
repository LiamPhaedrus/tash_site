class Bag < ApplicationRecord
  belongs_to :grouping
  has_many :tiles
  has_many :phrases, through: :tiles

end
