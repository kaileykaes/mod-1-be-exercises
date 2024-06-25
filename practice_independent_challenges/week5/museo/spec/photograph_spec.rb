require 'spec_helper'

RSpec.describe Photograph do
  before(:each) do
    attributes = {
                  id: "1",
                  name: "Rue Mouffetard, Paris (Boy with Bottles)",
                  artist_id: "4",
                  year: "1954"
    }      
    @photo = Photograph.new(attributes)
  end

  describe 'initialize' do 
    it 'exists and has attributes' do 
      expect(@photo).to be_a Photograph
      expect(@photo.id).to eq('1')
      expect(@photo.name).to eq('Rue Mouffetard, Paris (Boy with Bottles)')
      expect(@photo.artist_id).to eq('4')
      expect(@photo.year).to eq('1954')
    end
  end
end