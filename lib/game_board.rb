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

  def display_pegs(choice_array)
    display = []
    choice_array.each do |color|
      display.push(@possible_colors[color])
    end
    puts display.join(' ').colorize(mode: :blink)
  end

  def check_exact_match(guess_array, solution_array)
    exact_matches = 0
    guess_array.zip(solution_array).each do |pair|
      (exact_matches += 1 if pair[0] == pair[1])
    end
    if exact_matches == 4
      puts 'All guesses correct!!'
      exit
      # add board display here?
    end
    exact_matches
  end

  def check_color_match(guess_array, solution_array)
    color_matches = 0
    (guess_array & solution_array).map do |e|
      color_matches += [guess_array.count(e), solution_array.count(e)].min
    end
    color_matches
  end

  def display_matches(exact_matches, color_matches)
    puts "exact matches: #{exact_matches} "
    puts "color matches but wrong spot: #{color_matches - exact_matches} "
  end
end
