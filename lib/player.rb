class Player
  def initialize
    puts 'player intitialized'
  end

  def get_guess(possible_colors)
    @guesses = []
    p "available colors #{possible_colors.keys}"
    4.times do |i|
      puts "type your choice for position #{i + 1}".colorize(mode: :bold)
      guess = gets
      @guesses.push(guess.chomp.to_sym)
    end
    @guesses
  end
end
