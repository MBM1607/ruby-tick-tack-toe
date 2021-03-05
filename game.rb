require_relative 'board'
require_relative 'player'

# Class containing all the game logic
class Game
  def initialize
    @board = Board.new
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @num_turns = 0
  end

  def play
    until @board.full?
      @board.display
      turn
      [@player1, @player2].each do |player|
        if @board.win?(player)
          @board.display
          return win(player)
        end
      end
    end
    'Its a draw!'
  end

  def turn
    player = @num_turns.even? ? @player1 : @player2

    puts "\n#{player.name}, please enter a number (1-9) that is availble to place a #{player.marker}"

    input = gets.chomp
    if input.match?(/^[^1-9]$/) || !@board.cell_availble?(input.to_i)
      puts "\n\e[31mSorry, that is an invalid number. Please, try again.\e[0m\n"
      turn
    else
      @num_turns += 1
      @board.place(input.to_i, player.marker)
    end
  end

  def win(player)
    "#{player.name} has won this game."
  end
end
