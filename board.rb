class Board

	def initialize
		@cells = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
	end

	def display
		puts <<-Board
       ┌───────────┐
       │ \e[36m#{@cells[0]}\e[0m ║ \e[36m#{@cells[1]}\e[0m ║ \e[36m#{@cells[2]}\e[0m │
       │═══╬═══╬═══│
       │ \e[36m#{@cells[3]}\e[0m ║ \e[36m#{@cells[4]}\e[0m ║ \e[36m#{@cells[5]}\e[0m │
       │═══╬═══╬═══│
       │ \e[36m#{@cells[6]}\e[0m ║ \e[36m#{@cells[7]}\e[0m ║ \e[36m#{@cells[8]}\e[0m │
       └───────────┘
		Board
	end

	def place(index, marker)
		@cells[index - 1] = marker
	end

	def win?(player)
		mark = player.marker
		return ((@cells[0] == mark && @cells[1] == mark && @cells[2] == mark) ||
				(@cells[3] == mark && @cells[4] == mark && @cells[5] == mark) ||
				(@cells[6] == mark && @cells[7] == mark && @cells[8] == mark) ||
				(@cells[0] == mark && @cells[3] == mark && @cells[6] == mark) ||
				(@cells[1] == mark && @cells[5] == mark && @cells[7] == mark) ||
				(@cells[2] == mark && @cells[6] == mark && @cells[8] == mark) ||
				(@cells[0] == mark && @cells[4] == mark && @cells[8] == mark) ||
				(@cells[2] == mark && @cells[4] == mark && @cells[6] == mark))
	end

	def cell_availble?(cell)
		@cells[cell - 1].match?(/^[1-9]$/)
	end

	def full?
		@cells.all? { |cell| cell.match?(/^[^1-9]$/) }
	end
end
