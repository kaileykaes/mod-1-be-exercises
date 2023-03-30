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
end