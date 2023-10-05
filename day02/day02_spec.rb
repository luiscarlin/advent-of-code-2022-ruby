require_relative './day02'

RSpec.describe Day02 do
  describe 'part1' do
    it 'returns score of 15 in simple case' do
      input = [%w[A Y], %w[B X], %w[C Z]]

      p input

      expect(Day02.part1(input)).to eq(15)
    end
  end

  describe 'part2' do
    it 'returns world' do
      input = []

      expect(Day02.part2(input)).to eq('world')
    end
  end
end
