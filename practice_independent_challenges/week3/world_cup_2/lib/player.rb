class Player
  attr_reader :name, 
              :position

  def initialize(player_details)
    @name = player_details[:name]
    @position = player_details[:position]
  end
end