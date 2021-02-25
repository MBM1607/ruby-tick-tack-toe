require_relative 'board.rb'

class Game
	def initialize
		@board = Board.new
	end

	def play
		display
	end

	def display
		@board.display
	end
end
