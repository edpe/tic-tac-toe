class Game

  attr_reader :current_player

  def initialize(current_player = 'X')
    @current_player = current_player
  end

  def switch_player
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end

  def play(move)
    @move = move
    switch_player
  end

end
