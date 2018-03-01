class Game

  attr_reader :current_player

  def initialize(current_player = 'X')
    @current_player = current_player
  end

end
