# day02 solution
module Day02
  CHOICE_WEIGHT = {
    'ROCK' => 1,
    'PAPER' => 2,
    'SCISSORS' => 3
  }.freeze

  LOSER_BY_WINNER = {
    'ROCK' => 'SCISSORS',
    'SCISSORS' => 'PAPER',
    'PAPER' => 'ROCK'
  }.freeze

  WINNER_BY_LOSER = {
    'SCISSORS' => 'ROCK',
    'PAPER' => 'SCISSORS',
    'ROCK' => 'PAPER'
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
    case choice
    when 'A', 'X'
      'ROCK'
    when 'B', 'Y'
      'PAPER'
    when 'C', 'Z'
      'SCISSORS'
    end
  end

  def self.beats?(my_choice, opponent_choice)
    LOSER_BY_WINNER[my_choice] == opponent_choice
  end

  def self.get_my_choice_from_outcome(opponent_choice, outcome)
    if outcome == 'LOSE'
      LOSER_BY_WINNER[opponent_choice]
    elsif outcome == 'DRAW'
      opponent_choice
    else
      WINNER_BY_LOSER[opponent_choice]
    end
  end

  def self.part2(lines)
    my_score = 0

    lines.each do |line|
      opponent_choice = normalize(line[0])

      outcome = if line[1] == 'X'
                  'LOSE'
                else
                  line [1] == 'Y' ? 'DRAW' : 'WIN'
                end

      my_choice = get_my_choice_from_outcome(opponent_choice, outcome)

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

  if $PROGRAM_NAME == __FILE__
    lines = File.readlines('./day02/input', chomp: true).map(&:split)

    puts "Part 1: #{part1(lines)}"
    puts "Part 2: #{part2(lines)}"
  end
end
