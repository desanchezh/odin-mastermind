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
    @random_keys
  end
end
