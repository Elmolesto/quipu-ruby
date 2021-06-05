require_relative 'main'

RSpec.describe Day2 do
  sample_input = <<~TXT
    1-3 a: abcde
    1-3 b: cdefg
    2-9 c: ccccccccc
  TXT

  day2 = Day2.new(sample_input)

  describe 'part1' do
    it 'counts valid passwords' do
      expect(day2.part1).to eq(2)
    end
  end

  describe 'part2' do
    it 'counts valid passwords' do
      expect(day2.part2).to eq(1)
    end
  end
end
