require_relative 'main'

RSpec.describe Day1 do
  sample_input = [1721, 979, 366, 299, 675, 1456]
  day1 = Day1.new(sample_input)

  describe 'part1' do
    it 'returns 514579 for 2 sum 2020 in [1721, 979, 366, 299, 675, 1456]' do
      expected = 514579
      expect(day1.part1).to eq(expected)
    end
  end

  describe 'part2' do
    it 'returns 241861950 for 3 sum 2020 in [1721, 979, 366, 299, 675, 1456]' do
      expected = 241861950
      expect(day1.part2).to eq(expected)
    end
  end
end
