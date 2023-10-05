require_relative './day00'

RSpec.describe Day00 do
  describe 'part1' do
    it 'returns hello' do
      input = []

      expect(Day00.part1(input)).to eq('hello')
    end
  end

  describe 'part2' do
    it 'returns world' do
      input = []

      expect(Day00.part2(input)).to eq('world')
    end
  end
end
