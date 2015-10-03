require 'pry'
require './t3game'

class PlayGame
	def initialize
		@game = Game.new
	end

	board = (1..9).to_a
	def show_board(board)

		puts"
		#{board[0]} | #{board[1]} | #{board[2]}
		#{board[3]} | #{board[4]} | #{board[5]}
		#{board[6]} | #{board[7]} | #{board[8]}

		"
	end

	def greeting
		board = (1..9).to_a
		puts "Welcome to tic tac toe"
		sleep 2
		puts  "please choose:"
		sleep 1
		puts  "One"
		sleep 1
		puts  "Or two player mode"
		sleep 1
		puts  
		puts "1: One Player"
		puts
		puts "2: Two Player"
		puts ">>"
		show_board(board)
		choice = gets.chomp.to_i
		if choice == 2
			@game.play_human
		else
			@game.play_computer
		end
	end
end

new_game = PlayGame.new
new_game.greeting

