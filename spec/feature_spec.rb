require 'game'

describe 'Game Rules:' do

  # There are two players in the game (X and O)
  # Players take turns
  it 'consists of two players who take turns' do
    game = Game.new('X')
    game.play(1)
    expect(game.current_player).to eq 'O'
  end

  # A player can claim a field if it is not already taken
  it 'player can claim a field' do
    grid = Grid.new
    game = Game.new('X', grid)
    game.play(4)
    expect(grid.fields[4]).to eq 'X'
  end

  it 'player cannot claim a field that is already taken' do
    grid = Grid.new
    game = Game.new('X', grid)
    game.play(4)
    expect { game.play(4) }.to raise_error "That field is already taken"
  end

  # A turn ends when a player claims a field
  it 'a turn ends when a player claims a field' do
    grid = Grid.new
    game = Game.new('X', grid)
    game.play(4)
    expect(game.current_player).to eq 'O'
  end

end




# A player wins if they claim all the fields in a row, column or diagonal
# A game is over if a player wins
# A game is over when all fields are taken
