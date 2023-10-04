file = File.open('./day01/file.in')

max_sum = file.read.split("\n\n").map { |x| x.split("\n").map(&:to_i) }.map(&:sum).max

puts "Part 1: #{max_sum}"
