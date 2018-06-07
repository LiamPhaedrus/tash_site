require 'rails_helper'

describe Bag do

  context 'associations' do
    it { should belong_to(:grouping) }
    it { should have_many(:tiles) }
    it { should have_many(:phrases) }
  end

end
