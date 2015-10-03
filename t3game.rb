require 'pry'
require './t3player'
require './t3board'
MARK1 = "X"
MARK2 = "O"
HUMAN_MARK = "X"
COM_MARK = "O"

WIN_SET =  [[0,1,2], [3,4,5], [6,7,8],
			[0,3,6], [1,4,7], [2,5,8],
			[0,4,8], [2,4,6]]

A_PHRASES = ["Contacting skynet...", "Steping up to the plate", "Pouring the whiskey",
			"Preparing laser pointer", "Go long", "Droping the hammer", "consolidating fastners",
			"Preparing the evil eye"]

PHRASES = ["Droping mic", "Training kitten on target",
			"Checking on gumbo", "All the things...yeah you heard me",
			"Setting DVR to record how its made", "Shipping exploding crankshafts",
			"HOOPLAAAA", "Reconciling Lamas" ]

T_PHRASES = ["Tremble in thy socks", "Prepare for the running of the kittens", 
			"The gumbo is coming along quite nicely", "Prepare you last meal",
			"I know were to place the chicken wing", "Barbecue"]

class Game
	def intialize
	
	end
	board = (1..9).to_a
	def show_board(board)

		puts"
		#{board[0]} | #{board[1]} | #{board[2]}
		#{board[3]} | #{board[4]} | #{board[5]}
		#{board[6]} | #{board[7]} | #{board[8]}

		"
	end

	def game_over(board)
		win?(board) || draw(board)
	end

	def win?(board)
		WIN_SET.any? do |a, b ,c|
			board[a] == board[b] && board[b] == board[c]
		end
	end

	def draw(board)
		can_make_move(board).empty?
	end

	def can_make_move(board)
		board.reject { |x| x.is_a?(String) }
	end

	def update_board(board, pick, current_mark) 
		board[pick -1] = current_mark
		show_board(board)
	end

	def update_board_com(mark, pick, board)
		board[pick -1] = mark
		show_board(board)
	 	
	end 


	def take_turn_com(mark, board)
		if mark == HUMAN_MARK
			sleep 1
			puts "Make your move human"
			pick = gets.chomp.to_i
			until can_make_move(board).include?(pick)
				puts "#{pick} is not a valid space puny human"
				pick = gets.chomp.to_i
			end
		
		else
			mark = COM_MARK
			a_phrase = A_PHRASES.sample
			phrase = PHRASES.sample
			t_phrase = T_PHRASES.sample
			puts "#{a_phrase}....."
			sleep 3
			puts
			puts "#{phrase}......"
			puts
			sleep 2
			puts "#{t_phrase}....."
			puts
			sleep 2
			puts "Making my move"
			puts
			sleep 1
			until can_make_move(board).include?(pick)
			pick = rand(1..9).to_i
			end
		end
		update_board_com(mark, pick, board)
	end


	def take_turn(board, mark, player)
		puts "#{player} Make your move"
		pick = gets.chomp.to_i
		current_mark = mark
		until can_make_move(board).include?(pick)
			puts"#{pick} is not a valid space. Choose another: "
			pick = gets.chomp.to_i
		end
		update_board(board, pick, current_mark)
	end

	def postmortem_com(mark, board)
		if mark = HUMAN_MARK
		puts "NOOOOOO!!!!"
		sleep 2
		puts "The puny human wins"
	elsif mark = COM_MARK
		puts "The Machine has conqured all!"
	else
		puts "The human is a worthy opponent....the game is a draw"
		end 
	end

	def play_computer
		puts "Human player is X, the computer is O"
		board = (1..9).to_a
		mark = COM_MARK
		until  game_over(board)
			if mark == COM_MARK
				mark = HUMAN_MARK
				take_turn_com(mark, board)
			else
				mark = COM_MARK
				take_turn_com(mark, board)
			end
		end
		postmortem_com(mark, board)
	end




	def play_human
		board = (1..9).to_a
		player1 = HumanPlayer.new
		player2 = HumanPlayer.new
		player1.get_name_one
		player2.get_name_two
		player = player2
		mark = MARK2
		until game_over(board)
		if player == player2
				player = player1
				mark = MARK1
				name = "Player 1"
			take_turn(board, mark, name)
		else
			player = player2
			mark = MARK2 
			name = "Player 2"
			take_turn(board, mark, name)
		end
	end
	end
end






