require_relative 'lib/computer'
require_relative 'lib/game_board'
require_relative 'lib/player'
require 'colorize'

board = GameBoard.new
computer = Computer.new
player = Player.new

def display_pegs(choice_array, board)
  display = []
  choice_array.each do |color|
    display.push(board.possible_colors[color])
  end
  puts display.join(' ')
end

player_choice = player.get_guess(board.possible_colors)

display_pegs(player_choice, board)

# tested below
# p computer.random_choice(board.possible_colors)
# puts board.possible_colors[:blue] + " #{board.possible_colors[:red]}"
# puts 'test'.colorize(:color => :green, :mode => :blink)
