require 'spec_helper'

RSpec.describe Activity do
  before(:each) do
    @activity = Activity.new('Brunch')
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@activity).to be_an Activity
    end

    it 'has attributes' do 
      expect(@activity.name).to eq('Brunch')
    end
  end

  describe 'methods' do 
    it '#participants' do 
      expect(@activity.participants).to eq({})
    end
    
    it '#add_participant' do 
      expect(@activity.participants).to eq({})
      @activity.add_participant("Maria", 20)
      expect(@activity.participants).to eq({"Maria" => 20})
    end
    
    it '#total_cost' do 
      @activity.add_participant("Maria", 20)
      expect(@activity.total_cost).to eq(20)
      @activity.add_participant("Luther", 40)
      expect(@activity.participants).to eq({"Maria" => 20, 
                                            "Luther" => 40
                                          })
      expect(@activity.total_cost).to eq(60)
    end
    
    it '#split' do 
      @activity.add_participant("Maria", 20)
      expect(@activity.total_cost).to eq(20)
      @activity.add_participant("Luther", 40)
      expect(@activity.participants).to eq({"Maria" => 20, 
                                            "Luther" => 40
                                          })
      expect(@activity.split).to eq(30)
    end

    it '#split' do 
      @activity.add_participant("Maria", 20)
      expect(@activity.total_cost).to eq(20)
      @activity.add_participant("Luther", 40)
      expect(@activity.participants).to eq({"Maria" => 20, 
                                            "Luther" => 40
                                          })
      expect(@activity.owed).to eq({"Maria" => 10, "Luther" => -10})
    end
  end
end