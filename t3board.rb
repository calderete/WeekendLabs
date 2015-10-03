class Board
	def initialize
		
	end
	def show_board(board)
		
		puts"
			#{board[0]} | #{board[1]} | #{board[2]}
			#{board[3]} | #{board[4]} | #{board[5]}
			#{board[6]} | #{board[7]} | #{board[8]}

		"
	end

	def update_board(mark, pick, board)
		board[pick -1] = mark
		
	end

end

 
