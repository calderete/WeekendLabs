require 'pry'
require './t3player'
require './t3board'


class Game
	def intialize
		@new_player = HumanPlayer.new
	end

	def get_player
		player_1 = HumanPlayer.new
		player_1.get_name_one
		player_2 = HumanPlayer.new
		player_2.get_name_two
		puts player_1.player_one_mark
		puts player_2.player_two_mark
		@player_1 = player_1
		@player_2 = player_2
	end
	def game_over
	end
	def take_turn
		display = Board.new
		diplay.update_board
	end

	def player_switch
		@player == @player_1 ? @player_2 : @player_1
	end

	def play
		until game_over(board)
			player_switch
			take_turn
		end
	end
end

test = Game.new
test.get_player
