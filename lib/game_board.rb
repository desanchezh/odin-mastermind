class GameBoard
  def initialize
    @game_board = Array.new(4)
    @possible_colors = {
      blue: 'XX'.colorize(color: :blue, background: :blue),
      red: 'XX'.colorize(color: :red, background: :red),
      yellow: 'XX'.colorize(color: :yellow, background: :yellow),
      green: 'XX'.colorize(color: :green, background: :green),
      magenta: 'XX'.colorize(color: :magenta, background: :magenta),
      white: 'XX'.colorize(color: :white, background: :white)
    }
  end
  attr_reader :possible_colors
end
