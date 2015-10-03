require 'pry'
require './t3player'
require './t3board'
MARK1 = "X"
MARK2 = "O"

class Game
	def intialize
	
	end
	board = (1..9).to_a
	def show_board(board)

		puts"
		#{board[0]} | #{board[1]} | #{board[2]}
		#{board[3]} | #{board[4]} | #{board[5]}
		#{board[6]} | #{board[7]} | #{board[7]}

		"
	end

	def game_over
		false
	end

	def update_board(board, pick, current_mark) 
		board[pick -1] = current_mark
		show_board(board)
	end

	def take_turn(board, mark, player)
		puts "#{player} Make your move"
		pick = gets.chomp.to_i
		current_mark = mark
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
		until game_over
		if player == player2
				player = player1
				mark = MARK1
				name = "Player 1"
			take_turn(board, mark, name)
		else
			player = player1
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





