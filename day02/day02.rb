# day02 solution
module Day02
  CHOICE_WEIGHT = {
    'ROCK' => 1,
    'PAPER' => 2,
    'SCISSORS' => 3
  }.freeze

  NORM = {
    'A' => 'ROCK',
    'X' => 'ROCK',
    'B' => 'PAPER',
    'Y' => 'PAPER',
    'C' => 'SCISSORS',
    'Z' => 'SCISSORS'
  }.freeze

  BEATING = {
    'ROCK' => 'SCISSORS',
    'SCISSORS' => 'PAPER',
    'PAPER' => 'ROCK'
  }.freeze

  def self.part1(lines)
    my_score = 0

    lines.each do |line|
      opponent_choice, my_choice = line.map(&method(:normalize))

      my_score += CHOICE_WEIGHT[my_choice]

      my_score += if beats?(my_choice, opponent_choice)
                    6
                  elsif beats?(opponent_choice, my_choice)
                    0
                  else
                    3
                  end
    end

    my_score
  end

  def self.normalize(choice)
    NORM[choice]
  end

  def self.beats?(my_choice, opponent_choice)
    BEATING[my_choice] == opponent_choice
  end

  def self.part2(_lines)
    'world'
  end

  if $PROGRAM_NAME == __FILE__
    lines = File.readlines('./day02/input', chomp: true).map(&:split)

    puts "Part 1: #{part1(lines)}"
    puts "Part 2: #{part2(lines)}"
  end
end
