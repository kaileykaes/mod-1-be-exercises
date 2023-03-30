require 'spec_helper'

RSpec.describe WorldCup do
  before(:each) do
    @france = Team.new("France")
    @croatia = Team.new("Croatia")  
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})  
    @modric = Player.new({name: "Luka Modric", position: "midfielder"})  
    @vida = Player.new({name: "Domagoj Vida", position: "defender"}) 
    @france.add_player(@mbappe)    
    @france.add_player(@pogba)    
    @croatia.add_player(@modric)    
    @croatia.add_player(@vida)
    @world_cup = WorldCup.new(2018, [@france, @croatia])    
  end

  it 'exists' do
    expect(@world_cup).to be_a WorldCup
  end

  it 'has attributes' do 
    expect(@world_cup.year).to eq(2018)
    expect(@world_cup.teams).to eq([@france, @croatia])
  end
end