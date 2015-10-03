require 'pry'
require './t3player'
require './t3board'
MARK1 = "X"
MARK2 = "O"

class Game
	def intialize
	
	end

	

	
	def game_over
		false
	end

	def take_turn(mark, player, display)
		puts "#{player} Make your move"
		pick = gets.chomp.to_i
		board = (1..9).to_a 
		display.update_board(mark, pick, board)
		display.show_board(board)

		end

	def play
		diplay = Board.new
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
			take_turn(mark, player, display)
		else
			player = player1
			mark = MARK2 
			take_turn(mark, player, display)
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





