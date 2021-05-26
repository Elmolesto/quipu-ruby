require './main'

RSpec.describe 'solution' do
  describe "#entries_multiplied" do
    sample_input = [1721, 979, 366, 299, 675, 1456]

    it 'returns 514579 for 2 sum 2020 in [1721, 979, 366, 299, 675, 1456]' do
      expected = 514579
      expect(entries_multiplied(2, sample_input)).to eq(expected)
    end

    it 'returns 241861950 for 3 sum 2020 in [1721, 979, 366, 299, 675, 1456]' do
      expected = 241861950
      expect(entries_multiplied(3, sample_input)).to eq(expected)
    end
  end
end
