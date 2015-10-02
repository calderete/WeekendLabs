class HumanPlayer
	def initialize

	end

	def get_name_one
		puts "Player one What is your name?"
		player_name = gets.chomp
		puts "Are you using X or O?"
		player_mark = gets.chomp
	end

	def get_name_two
		puts "Player two what is your name?"
		player_name = gets.chomp
		puts "Are you using X or O?"
		player_mark = gets.chomp
	end
	def player_mark
		@player_mark
	end

	def player_name
		@player_name
	end
end