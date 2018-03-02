require './lib/grid'

class Game

  attr_reader :current_player

  def initialize(current_player = 'X', grid = Grid.new)
    @current_player = current_player
    @grid = grid
  end

  def switch_player
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end

  def play(move)
    unless @grid.fields[move].is_a? Integer
      raise "That field is already taken"
    else
      @grid.add(@current_player, move)
      switch_player
    end
  end

end
