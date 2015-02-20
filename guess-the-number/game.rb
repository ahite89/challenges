class GuessTheNumber

  def initialize
    @number = rand(500)
  end

  def start
    puts "Guess a number between 1 and 500:"
  end

  def play
    @guess = gets.chomp.to_i
  end

  def results
    if @guess > @number
      puts "Too high, try again."
    elsif @guess < @number
      puts "Too low, try again."
    end
  end

  def run
    while true
      start
      play
      results
      if @guess == @number
        puts "Congratulations, you guessed the number!"
        break
      end
    end
  end
end

game = GuessTheNumber.new
game.run
