class WorldCup
  attr_reader :year, 
              :teams
  
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    # teams = @teams.flat_map do |team|
    #   team.players_by_position(position) unless team.eliminated?
    # end.compact


    # players = @teams.flat_map do |team|
    #   if team.eliminated? == false
    #     team.players_by_position(position)
    #   end
    # end.compact
    
    # players = []
    # @teams.each do |team|
    #   players << team.players unless team.eliminated?
    # end
    # position_players = []
    # players.flatten.each do |player|
    #   position_players << player if player.position == position
    # end
    # position_players
  end

  
  def all_players_by_position 
    all_players = Hash.new {|all_players, key| all_players[key] = []}
    @teams.each do |team|
      team.players.each do |player|
        all_players[player.position] << player
      end
    end
    all_players
  end

  # def all_players_by_position
  #   all_players = Hash.new
  #   @teams.each do |team|
  #     team.players.each do |player|
  #       require 'pry'; binding.pry
  #       all_players[player.position] 
  #     end
  #   end
  # end
end