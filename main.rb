require_relative 'game.rb'

def play
	continue = true
	while continue
		puts "Lets Play Tick-Tack-Toe!!! \n\n"
		game = Game.new
		game.play

		puts "\nWould you like to play a new game? Press 'y' for yes or any other key for no"
		choice = gets.chomp.downcase
		continue = false unless choice == 'y'
	end
end

play
