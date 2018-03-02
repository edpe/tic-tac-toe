class Grid

  attr_reader :fields

  def initialize
    # could be extended by generating a list of numbers based on an argument
    # passed into grid and pushing them into an array
    @fields = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def add(player, move)
    @fields[move] = player
    @fields
  end

end
