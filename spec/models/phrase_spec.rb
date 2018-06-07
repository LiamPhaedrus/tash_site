require 'rails_helper'

describe Phrase do

  context 'validations' do
    it { should validate_presence_of(:name) }
  end

  context 'associations' do
    it { should have_many(:tiles) }
    it { should have_many(:bags) }
  end

end
