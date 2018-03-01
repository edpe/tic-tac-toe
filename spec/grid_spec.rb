require 'grid'

describe Grid do

  subject(:grid) { described_class.new }

  it 'initialises with an empty array' do
    expect(grid.fields).to be_a Array
  end
end
