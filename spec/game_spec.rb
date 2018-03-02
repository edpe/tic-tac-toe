require 'game'

describe Game do

  let(:grid) { double :grid, add: true, fields: [1, 2, 3, 4, 5, 6, 7, 8, 9] }
  subject(:game) { described_class.new('X', grid) }

  it 'begins the game with X as current player' do
    expect(game.current_player).to eq 'X'
  end

  context '#switch_player do' do
    it 'can switch between players' do
      expect { game.switch_player }.to change { game.current_player }.from('X').to('O')
    end
  end

  context '#play' do
    it 'can add player symbol into the grid' do
      expect(grid).to receive(:add).with('X', 0)
      game.play(0)
    end
  end

end
