class Bag < ApplicationRecord
  belongs_to :grouping
  belongs_to :kit
  has_many :tiles
  has_many :phrases, through: :tiles

end
