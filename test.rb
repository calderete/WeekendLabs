require 'minitest/autorun'
require './t3game'
#require './oo_tic_tac_toe'
require 'pry'
require './t3player'

class GameTest < Minitest::Test
	def set_up
		
	end

	def test_game_over
		board = (1..9).to_a
		game = Game.new
		refute game.game_over(board)
		refute game.draw(board)
	end

	def test_win
		board = ["X", "X", "X", 3, 4, 5, 6, 7, 8,]
		game = Game.new
		assert game.win?(board)
	end
end

class T3Test
	def test_show_board_
		require './oo_tic_tac_toe'
		play = Playgame.new
		board = (1..9).to_a
		assert play.show_board(board)
	end

	def test_greeting
		require './oo_tic_tac_toe'
		play = Playgame.new
		assert play.greeting
	end
end

class TestPlayer
	def test_get_name_one
		player1 = HumanPlayer.new
		assert player1.get_name_one
	end

	def test_get_name_two
		player2 = Humanplayer.new
		assert player2.get_name_two
	end 

end









