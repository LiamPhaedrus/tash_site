require 'rails_helper'

describe Api::V1::KitsController, type: :controller do
let(:parsed_json) { JSON.parse(response.body) }

  describe "#index" do
    it 'returns JSON of the kit' do
      kit = create(:kit)
      bag1 = create(:bag, kit: kit)
      bag2 = create(:bag, kit: kit)

      get :index

      expect(response.status).to eq 200
      expect(parsed_json.first['id']).to eq kit.id
      expect(parsed_json.first['name']).to eq kit.name

      replied_bags = parsed_json.first['bags']

      expect(replied_bags.map{ |bag| bag['name'] }).to match_array [bag1.name, bag2.name]
      expect(replied_bags.map{ |bag| bag['id'] }).to match_array [bag1.id, bag2.id]
    end
  end

end
