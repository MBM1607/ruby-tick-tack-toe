# Class to hold the information about players
class Player
  attr_reader :name, :marker

  def initialize(num)
    puts "What is the name of Player ##{num}?"
    @name = gets.chomp
    puts 'What character would you like to be your game marker?'
    @marker = gets.chomp
  end
end
