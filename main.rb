require_relative 'lib/computer'
require_relative 'lib/game_board'
require_relative 'lib/player'
require 'colorize'

def check_exact_match(player_array, computer_array)
  exact_matches = 0
  player_array.zip(computer_array).each do |pair|
    (exact_matches += 1 if pair[0] == pair[1])
  end
  if exact_matches == 4
    puts 'All guesses correct!!'
    exit
    # add board display here?
  end
  exact_matches
end

def check_color_match(player_array, computer_array)
  color_matches = 0
  (player_array & computer_array).map do |e|
    color_matches += [player_array.count(e), computer_array.count(e)].min
  end
  color_matches
end

def display_matches(exact_matches, color_matches)
  puts "exact matches: #{exact_matches} "
  puts "color matches but wrong spot: #{color_matches - exact_matches} "
end

board = GameBoard.new
computer = Computer.new
player = Player.new
p computer_choices = computer.random_choice(board.possible_colors)

12.times do
  p player_choices = player.get_guess(board.possible_colors)
  board.display_pegs(player_choices)
  exact_matches = check_exact_match(player_choices, computer_choices)
  color_matches = check_color_match(player_choices, computer_choices)
  display_matches(exact_matches, color_matches)
end

# should probably tuck away match checking and computer choice in a class and make it protected/priv

# tested below
# board.display_pegs(player_choice)
# puts 'test'.colorize(:color => :green, :mode => :blink)
