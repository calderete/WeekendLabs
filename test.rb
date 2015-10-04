require 'minitest/autorun'
require './t3game'
require './oo_tic_tac_toe'
require 'pry'

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

