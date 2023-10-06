require_relative './day02'

RSpec.describe Day02 do
  describe 'part1' do
    it 'returns score of 15 in simple case' do
      input = [['A', 'Y'], ['B', 'X'], ['C', 'Z']]

      expect(Day02.part1(input)).to eq(15)
    end
  end

  describe 'part2' do
    it 'returns score of 12 in simple case' do
      input = [['A', 'Y'], ['B', 'X'], ['C', 'Z']]

      expect(Day02.part2(input)).to eq(12)
    end
  end
end
