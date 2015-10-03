require 'pry'
require './t3player'
require './t3board'
MARK1 = "X"
MARK2 = "O"

WIN_SET =  [[1,2,3], [3,4,5], [6,7,8],
			[0,3,6], [1,4,7], [2,5,8],
			[0,4,8], [2,4,6]]

class Game
	def intialize
	
	end
	board = (1..9).to_a
	def show_board(board)

		puts"
		#{board[0]} | #{board[1]} | #{board[2]}
		#{board[3]} | #{board[4]} | #{board[5]}
		#{board[6]} | #{board[7]} | #{board[8]}

		"
	end

	def win?(board)
		WIN_SET.any? do |a, b ,c|
			board[a] == board[b] && board[b] == board[c]
		end
	end

	def game_over(board)
		win?(board)
	end

	def can_make_move(board)
		board.reject { |x| x.is_a?(String) }
	end

	def update_board(board, pick, current_mark) 
		board[pick -1] = current_mark
		show_board(board)
	end

	def take_turn(board, mark, player)
		puts "#{player} Make your move"
		pick = gets.chomp.to_i
		current_mark = mark
		until can_make_move(board).include?(pick)
			puts"#{pick} is not a valid space. Choose another: "
			pick = gets.chomp.to_i
		end
		update_board(board, pick, current_mark)
	end

	def play
		board = (1..9).to_a
		player1 = HumanPlayer.new
		player2 = HumanPlayer.new
		player1.get_name_one
		player2.get_name_two
		player = player2
		mark = MARK2
		until game_over(board)
		if player == player2
				player = player1
				mark = MARK1
				name = "Player 1"
			take_turn(board, mark, name)
		else
			player = player2
			mark = MARK2 
			name = "Player 2"
			take_turn(board, mark, name)
		end
	end
	end

end

#def play_game
#	game = Game.new
#	game.get_player
#	game.play 
#end
#play_game





