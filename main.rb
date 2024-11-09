require_relative 'lib/computer'
require_relative 'lib/game_board'
require_relative 'lib/player'
require 'colorize'

board = GameBoard.new
computer = Computer.new
player = Player.new
p computer_choices = computer.random_choice(board.possible_colors)

12.times do
  p player_choices = player.get_guess(board.possible_colors)
  board.display_pegs(player_choices)
  exact_matches = board.check_exact_match(player_choices, computer_choices)
  color_matches = board.check_color_match(player_choices, computer_choices)
  board.display_matches(exact_matches, color_matches)
end

# should probably tuck away match checking and computer choice in a class and make it protected/priv

# tested below
# board.display_pegs(player_choice)
# puts 'test'.colorize(:color => :green, :mode => :blink)
