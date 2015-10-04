require 'pry'
require './oo_tic_tac_toe'
require 'minitest/autorun'

class T3Test
	def test_greeting
		play = Playgame.new
		board = (1..9).to_a
		assert play.show_board(board)
	end
end