class Phrase < ApplicationRecord
  validates :name, presence: true

  has_many :tiles
  has_many :bags, through: :tiles
end
