class Computer
  def initialize
    puts 'computer initialized'
  end

  def random_choice(possible_colors)
    keys = possible_colors.keys
    @random_keys = []
    4.times do
      @random_keys.push(keys.sample)
    end
    # protected ...uncomment when done testing
    @random_keys
  end

  # def smart_choice(possible_colors, exact_matches, color_matches)
  #  keys = possible_colors.keys
  #  @guess = %i[blue blue blue blue]
  #  if exact_matches > 0
  #
  #  end
  # end
end
