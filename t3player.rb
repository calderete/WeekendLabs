require "pry"

class HumanPlayer
	def initialize

	end

	def get_name_one
		puts "Player one What is your name?"
		player_name = gets.chomp
		puts "X is your mark"
		@player_one_mark = "X"
	end

	def get_name_two
		puts "Player two what is your name?"
		player_name = gets.chomp
		puts "O is your mark"
		@player_two_mark = "O"
	end
	def player_one_mark
		@player_one_mark

	end
	def player_two_mark
		@player_two_mark
	end

	def player_name
		@player_name
	end
end