require 'game'

describe Game do

  subject(:game) { described_class.new('X') }

  it 'begins the game with X as current player' do
    expect(game.current_player).to eq 'X'
  end

end
