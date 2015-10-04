require "pry"

class HumanPlayer
	def initialize

	end

	def get_name_one(name)
		puts "Player one What is your name?"
		name = gets.chomp
		puts "#{name} X is your mark!"
	end

	def get_name_two(name)
		puts "Player two what is your name?"
		name = gets.chomp
		puts "#{name} O is your mark!"
	end
	
end