class Grouping < ApplicationRecord
  validates :name, presence: true

  has_many :bags

end
