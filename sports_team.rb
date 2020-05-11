class Team
  #
  # attr_reader :team_name, :players, :coach
  # attr_writer :team_name, :players, :coach
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # getters

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # # setters

  def set_coach_name(new_coach)
    @coach = new_coach
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player(player)
    found = false
    for item in @players
      if player == item
        found = true
      end
    end
    return found
  end

def add_points(result)
  case result
  when "win"
    @points += 3
  when "draw"
    @points += 1
  when "lose"
    @points += 0
  end

  end


end
