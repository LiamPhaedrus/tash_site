require 'rails_helper'

describe Kit do

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  context 'associations' do
    it { should have_many(:bags) }
    it { should have_many(:tiles) }
    it { should have_many(:groupings) }
  end

end
