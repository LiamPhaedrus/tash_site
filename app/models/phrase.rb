class Phrase < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :tiles
  has_many :bags, through: :tiles
end
