class Board

	def initialize
		@cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	end

	def display
		puts <<-Board
       ┌───────────┐
       │ #{@cells[0]} ║ #{@cells[1]} ║ #{@cells[2]} │
       │═══╬═══╬═══│
       │ #{@cells[3]} ║ #{@cells[4]} ║ #{@cells[5]} │
       │═══╬═══╬═══│
       │ #{@cells[6]} ║ #{@cells[7]} ║ #{@cells[8]} │
       └───────────┘
		Board
	end
end
