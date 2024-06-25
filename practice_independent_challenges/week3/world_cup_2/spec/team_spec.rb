require 'spec_helper'

RSpec.describe Team do
  before(:each) do
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@team).to be_a Team
    end

    it 'has attributes' do 
      expect(@team.country).to eq("France") 
    end
  end

  describe 'methods' do 
    it '#eliminated?' do 
      expect(@team.eliminated?).to be false

      @team.eliminated = true 

      expect(@team.eliminated?).to be true
    end

    it '#players' do 
      expect(@team.players).to eq([])
    end

    it '#add_player' do
      @team.add_player(@mbappe)
      @team.add_player(@pogba)
      expect(@team.players).to eq([@mbappe, @pogba])
    end

    it '#players_by_position' do 
      @team.add_player(@mbappe)
      @team.add_player(@pogba)
      expect(@team.players_by_position("midfielder")).to eq([@pogba])
    end
  end
end