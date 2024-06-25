require 'spec_helper'

RSpec.describe Reunion do
  before(:each) do
    @reunion = Reunion.new('1406 BE')
    @activity_1 = Activity.new("Brunch")
    @activity_1.add_participant('Maria', 20)
    @activity_1.add_participant('Henrique', 10)
    @activity_2 = Activity.new("Horseback riding")
    @activity_2.add_participant('Maria', 30)
    @activity_2.add_participant('Henrique', 50)
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@reunion).to be_a Reunion
    end

    it 'has attributes' do 
      expect(@reunion.name).to eq('1406 BE')
    end
  end

  describe 'methods' do 
    it '#activities' do 
      expect(@reunion.activities).to eq([])

      @reunion.add_activity(@activity_1)

      expect(@reunion.activities).to eq([@activity_1])
    end

    it '#total_cost' do 
      # expect(@reunion.total_cost).to eq(0)

      @reunion.add_activity(@activity_1) 
      expect(@reunion.total_cost).to eq(30)
      
      @reunion.add_activity(@activity_2)
      expect(@reunion.total_cost).to eq(110)      
    end

    it '#participant'
  end
end