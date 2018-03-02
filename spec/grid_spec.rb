require 'grid'

describe Grid do

  subject(:grid) { described_class.new }

  it 'initialises with an empty array' do
    expect(grid.fields).to be_a Array
  end

  context "#add" do
    it 'adds a string to an array' do
      expect(grid.add('X', 4)).to eq([1, 2, 3, 4, 'X', 6, 7, 8, 9])
    end
  end

end
