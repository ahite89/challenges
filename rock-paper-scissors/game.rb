class RockPaperScissors

  def initialize
    @player_points = 0
    @computer_points = 0
  end

  def setup
    puts "Welcome to Rock, Paper, Scissors!"
    puts "The first player to win two rounds is the victor."
    @game_number = 1
  end

  def start
    puts "Choose rock (r), paper (p), or scissors (s):"
  end

  def play
    @choices = ['r','p','s']
    @computer_choice = @choices.sample
    @player_choice = gets.chomp.downcase
  end

  def results
    case [@player_choice, @computer_choice]
    when ['r', 's'], ['s', 'p'], ['p', 'r']
      puts "Player wins the round."
      @player_points += 1
      @game_number += 1
    when ['r', 'r'], ['s', 's'], ['p', 'p']
      puts "Tie. Choose again."
    when ['r', 'p'], ['s', 'r'], ['p', 's']
      puts "Computer wins the round."
      @computer_points += 1
      @game_number += 1
    else
      puts "Please choose either r, p, or s."
    end

    puts "Player score: #{@player_points}, Computer score: #{@computer_points}"

    case
    when @computer_points == 2
      puts "Computer wins!"
      exit
    when @player_points == 2
      puts "Player wins!"
      exit
    end
  end

  def run
    loop do
      start
      play
      results
    end
  end
end

game = RockPaperScissors.new
game.setup
game.run
