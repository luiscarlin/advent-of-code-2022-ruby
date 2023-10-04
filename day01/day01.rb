def part_1
  file = File.open('./day01/file.in')

  max_sum = file.read.split("\n\n").map { |x| x.split("\n").map(&:to_i) }.map(&:sum).max

  puts "Part 1: #{max_sum}"
end

def part_2
  file = File.open('./day01/file.in')

  sum_top_three = file.read.split("\n\n").map do |x|
    x.split("\n").map(&:to_i)
  end.map(&:sum).sort.reverse.first(3).reduce(:+)

  puts "Part 2: #{sum_top_three}"
end

part_1
part_2
