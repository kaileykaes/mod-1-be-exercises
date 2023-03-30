class WorldCup
  attr_reader :year,
              :teams
  
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    players = []
    @teams.each do |team|
      players << team.players unless team.eliminated?
    end
    position_players = players.flatten.find_all do |player|
      player.position == position
    end
  end

  def all_players_by_position
    all_players = Hash.new 
    all_players['forward'] = @teams.map{ |team| team.players_by_position('forward')}.flatten!
    all_players['midfielder'] = @teams.map{ |team| team.players_by_position('midfielder')}.flatten!
    all_players['defender'] = @teams.map{ |team| team.players_by_position('defender')}.flatten!
    all_players
  end
end