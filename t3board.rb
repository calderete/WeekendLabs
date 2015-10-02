class Board
	def initialize
		@board = (1..9).to_a
	end

	def show_board
		
		puts"
			#{@board[0]} | #{@board[1]} | #{@board[2]}
			#{@board[3]} | #{@board[4]} | #{@board[5]}
			#{@board[6]} | #{@board[7]} | #{@board[8]}

		"
	end

	def update_board(player_mark)
		mark
	end

end

new_board = Board.new
new_board.show_board 
