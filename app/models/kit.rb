class Kit < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :bags
  has_many :tiles, through: :bags
  has_many :groupings, through: :bags
end
