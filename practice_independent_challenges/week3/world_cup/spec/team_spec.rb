require 'spec_helper'

RSpec.describe Team do
  before(:each) do
    @team = Team.new("France")    
  end

  it 'exists' do
    expect(@team).to be_a Team
  end

  it 'has attributes' do 
    expect(@team.country).to eq('France')
  end
end