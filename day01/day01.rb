# This module contains solutions for Day 1 of the Advent of Code 2022 challenge.
module Day01
  def self.part1(lines)
    lines.slice_before('').lazy.map { |group| group.map(&:to_i).sum }.max
  end

  def self.part2(lines)
    lines.slice_before('')
         .map { |group| group.map(&:to_i).sum }
         .sort
         .reverse
         .take(3)
         .sum
  end

  if $PROGRAM_NAME == __FILE__
    lines = File.readlines('./day01/file.in', chomp: true)

    puts "Part 1: #{part1(lines)}"
    puts "Part 2: #{part2(lines)}"
  end
end
