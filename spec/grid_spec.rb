require 'grid'

describe Grid do

  subject(:grid) { described_class.new(3) }

  it 'initialises with an empty array of fields' do
    expect(grid.fields.length).to eq 9
  end
end
