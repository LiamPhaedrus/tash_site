require 'rails_helper'

describe Tile do

  context 'associations' do
    it { should belong_to(:bag) }
    it { should belong_to(:phrase) }
  end

end
