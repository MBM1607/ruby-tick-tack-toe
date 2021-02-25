class Board

	def initialize
		@cells = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
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

	def place(index, marker)
		@cells[index - 1] = marker
	end

	def cell_availble?(cell)
		@cells[cell - 1].match?(/^[1-9]$/)
	end

	def full?
		@cells.all? { |cell| cell.match?(/^[^1-9]$/) }
	end
end
