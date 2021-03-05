require_relative 'game'

def play
  puts "Lets Play Tick-Tack-Toe!!! \n\n"
  game = Game.new
  result = game.play
  puts "\n#{result}"
  repeat
end

def repeat
  puts "\nWould you like to play a new game? Press 'y' for yes or any other key for no"
  choice = gets.chomp.downcase
  play if choice == 'y'
end

play
