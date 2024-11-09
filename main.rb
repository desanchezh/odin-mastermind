require_relative 'lib/computer'
require_relative 'lib/game_board'
require_relative 'lib/player'
require 'colorize'

board = GameBoard.new

puts board.possible_colors[:blue] + " #{board.possible_colors[:red]}"


#puts 'test'.colorize(:color => :green, :mode => :blink)
