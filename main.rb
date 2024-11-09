require_relative 'lib/computer'
require_relative 'lib/game_board'
require_relative 'lib/player'
require 'colorize'

board = GameBoard.new
computer = Computer.new
player = Player.new

puts "Do you want to 'guess' or 'pick' the solution?"
choice = gets.chomp
case choice
when 'guess'
  p computer_choices = computer.random_choice(board.possible_colors)
  12.times do
    player_choices = player.get_guess(board.possible_colors)
    board.play_round(player_choices, computer_choices)
  end
  puts 'game over! solution not found'
when 'pick'
  p player_choices = player.get_guess(board.possible_colors)
  12.times do
    computer_choices = computer.random_choice(board.possible_colors)
    board.play_round(computer_choices, player_choices)
  end
  puts 'GAME OVER! solution not found'.colorize(mode: :bold)
end

# tested below
# board.display_pegs(player_choice)
# puts 'test'.colorize(:color => :green, :mode => :blink)
