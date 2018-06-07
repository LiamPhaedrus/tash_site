require 'rails_helper'

describe Tile do

  context 'validations' do
    it { should validate_uniqueness_of(:phrase_id).scoped_to(:bag_id) }
  end

  context 'associations' do
    it { should belong_to(:bag) }
    it { should belong_to(:phrase) }
  end

end
