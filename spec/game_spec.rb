require 'game'

describe Game do

  subject(:game) { described_class.new('X') }

  it 'begins the game with X as current player' do
    expect(game.current_player).to eq 'X'
  end

  it 'can switch between players' do
    expect { game.switch_player }.to change { game.current_player }.from('X').to('O')
  end

end
