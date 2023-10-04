require_relative './day01'

RSpec.describe Day01 do
  describe 'part1' do
    it 'returns the chunk with he highest sum' do
      input = ['1', '2', '1', '', '3', '1', '1']

      expect(Day01.part1(input)).to eq(5)
    end
  end

  describe 'part2' do
    it 'returns the sum for the top 3 chunks' do
      input = ['1', '2', '1', '', '3', '1', '1', '', '4', '', '1']

      expect(Day01.part2(input)).to eq(13)
    end
  end
end
