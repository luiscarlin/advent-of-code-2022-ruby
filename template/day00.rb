# day00 solution
module Day00
  def self.part1(_lines)
    'hello'
  end

  def self.part2(_lines)
    'world'
  end

  if $PROGRAM_NAME == __FILE__
    lines = File.readlines('./day00/input', chomp: true)

    puts "Part 1: #{part1(lines)}"
    puts "Part 2: #{part2(lines)}"
  end
end
