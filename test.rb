require 'minitest/autorun'
require './t3game'
require './t3player'

class GameTest < Minitest::Test
	def test_take_turn
		assert @player_.player_marks
	end
end
