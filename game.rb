require_relative 'board.rb'
require_relative 'player.rb'

class Game
	def initialize
		@board = Board.new
		@player_1 = Player.new(1)
		@player_2 = Player.new(2)
		@num_turns = 0
	end

	def play
		until @board.full?
			@board.display
			turn
		end
		puts "\nIts a draw!"
	end

	def turn
		player = @num_turns % 2 == 0 ? @player_1 : @player_2

		puts "\n#{player.name}, please enter a number (1-9) that is availble to place a #{player.marker}"

		input = gets.chomp
		unless input.match?(/^[1-9]$/) and @board.cell_availble?(input.to_i)
			puts "\n\e[31mSorry, that is an invalid number. Please, try again.\e[0m\n"
			turn
		else
			@num_turns += 1
			@board.place(input.to_i, player.marker)
		end

	end

end
