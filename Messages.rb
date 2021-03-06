require_relative 'Game_Flow'
require_relative 'Beginner'
require_relative 'Intermediate'
require_relative 'Advance'
require 'colorize'

class GameInterface

	def welcome_message
		puts "Welcome to MaStErMiNdGaMe...".yellow+" \n\nWould you like to" + " (p)lay".blue+", read the" + " (i)nstructions".magenta+ ", read a little" + " (b)ackground".green+ "\non MaStErMiNdGaMe or" +" (q)uit?".red
		puts game_flow_msg
		puts game_select_level
		puts enter_player_name
		
	end
	def game_flow_msg 
		inputs = gets.chomp
		
		case inputs.downcase
		when "p"
			GameFlow.new.game_play
		when "i"
			GameFlow.new.instruction
			welcome_message
		when "b"
			GameFlow.new.background
			welcome_message
		when "q"
			system (exit)
		else
			"Invalid Input"
			game_flow_msg
		end
		


	end

	def game_select_level
	
		$input = gets.chomp
		case 
		when $input == "1"
			puts "So you would like to play as a beginner!\nStart by telling me your name:".blue
			enter_player_name
			Beginner.new.beginner_start_game
		when $input == "2"
			puts "So you would like to play as an intermediate!\nStart by telling me your name:".green
			enter_player_name
			Intermediate.new.intermediate_start_game
		when $input == "3"
			enter_player_name
			"So you would like to play as advanced!\nStart by telling me your name:".red
			Advance.new.advance_start_game
		else
			puts "Invalid input...".red+ "\n\nSelect" + " (1) " + "for Beginner," + " (2) " + "for Intermediate or" + " (3) " + "for Advance"
			if  $input == 'q'
				GameFlow.new.quit
				system(exit)
			else
				game_select_msg
			end
		end
		
	end

	def enter_player_name 
		name = ""
		$input = gets.chomp
		if $input == "q"
			GameFlow.new.quit
			system (exit)
		elsif $input == "/a..z/"
			name << $input
		end
	end

end