class Player
  attr_reader :player_name
  attr_reader :lives

  def initialize player_name
    @player_name = player_name
    @lives = 3
  end

  def decrement_lives
    @lives -= 1
  end

  def to_s
    @player_name
  end
end
