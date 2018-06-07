require 'rails_helper'

describe Bag do

  context 'validations' do
    it { should validate_uniqueness_of(:grouping_id).scoped_to(:kit_id) }
  end

  context 'associations' do
    it { should belong_to(:grouping) }
    it { should have_many(:tiles) }
    it { should have_many(:phrases) }
  end

  describe 'stuff' do
    it "gets it's name from it's grouping" do
      grouping = create(:grouping)
      bag = create(:bag, grouping: grouping)
      expect(bag.name).to eq grouping.name
    end
  end
end
