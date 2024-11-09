class GameBoard
  def initialize
    @game_board = Array.new(4)
    @possible_colors = {
      blue: 'blue'.colorize(:blue),
      red: 'red'.colorize(:red),
      green: 'green'.colorize(:green)
    }
  end

  attr_reader :possible_colors
end
