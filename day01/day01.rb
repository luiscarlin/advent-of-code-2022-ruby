def part_1
  max = File.readlines('./day01/file.in', chomp: true).slice_before('').lazy.map { |group| group.map(&:to_i).sum }.max

  puts "Part 1: #{max}"
end

def part_2
  sum_top_three = File.readlines('./day01/file.in', chomp: true)
                      .slice_before('')
                      .map { |group| group.map(&:to_i).sum }
                      .sort
                      .reverse
                      .take(3)
                      .sum

  puts "Part 2: #{sum_top_three}"
end

part_1
part_2
