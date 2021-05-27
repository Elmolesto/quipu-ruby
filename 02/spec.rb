require './main'

RSpec.describe 'solution' do
  sample_input = ['1-3 a: abcde', '1-3 b: cdefg', '2-9 c: ccccccccc']
  sample_data = sample_input.map { |p| string_to_password(p) }

  describe '#valid_password_1?' do

    it 'returns true for "1-3 a: abcde"' do
      expect(valid_password_1?(sample_data[0])).to eq(true)
    end

    it 'returns false for "1-3 b: cdefg"' do
      expect(valid_password_1?(sample_data[1])).to eq(false)
    end

    it 'returns true for "2-9 c: ccccccccc"' do
      expect(valid_password_1?(sample_data[2])).to eq(true)
    end
  end

  describe '#valid_password_2?' do
    it 'returns true for "1-3 a: abcde"' do
      expect(valid_password_2?(sample_data[0])).to eq(true)
    end

    it 'returns false for "1-3 b: cdefg"' do
      expect(valid_password_2?(sample_data[1])).to eq(false)
    end

    it 'returns false for "2-9 c: ccccccccc"' do
      expect(valid_password_2?(sample_data[2])).to eq(false)
    end
  end
end
