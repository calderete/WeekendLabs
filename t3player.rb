require "pry"

class HumanPlayer
	def initialize

	end

	def get_name_one
		puts "Player one What is your name?"
		player_name = gets.chomp
		puts "X is your mark"
	end

	def get_name_two
		puts "Player two what is your name?"
		player_name = gets.chomp
		puts "O is your mark"
	end
	
end