require 'game'

describe 'Game Rules:' do

  # There are two players in the game (X and O)
  # Players take turns until the game is over
  it ' consists of two players who take turns' do
    game = Game.new
    expect(game.current_player).to eq 'X'
    game.play(1)
    expect(game.current_player).to eq 'O'
  end
end

# A player can claim a field if it is not already taken
# A turn ends when a player claims a field
# A player wins if they claim all the fields in a row, column or diagonal
# A game is over if a player wins
# A game is over when all fields are taken
