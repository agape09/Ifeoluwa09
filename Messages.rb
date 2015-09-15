require_relative 'Game_Flow'
require_relative 'Beginner'
require_relative 'Intermediate'
require_relative 'Advavance'
require 'colorize'

class Message

	def welcome_message
		puts "Welcome to MaStErMiNdGaMe! \nWould you like to " + "(p)lay".blue+", read the" + "(i)nstructions".yellow+ ", read a little" + "(b)ackground".red+ "\nonMaStErMiNdGaMe or" +"(q)uit?".green
		puts game_flow_msg
		puts game_select_msg
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
			system ("exit")
		end
		
	end

	def game_select_msg
	
		$input = gets.chomp
		case 
		when $input == "1"
			puts "So you would like to play as a beginner!\nStart by telling me your name:".blue
			enter_player_name
			Beginner.new.start_game_msg
		when $input == "2"
			puts "So you would like to play as an intermediate!\nStart by telling me your name:".green
			enter_player_name
			Intermediate.new.start_game_msgg
		when $input == "3"
			"So you would like to play as advanced!\nStart by telling me your name:".red
		else
			puts "Invalid input... Select" + " (1) " + "for Beginner," + " (2) " + "for Intermediate or" + " (3) " + "for Advance"
			game_select_msg
		end
		
	end

	def enter_player_name
		$input = gets.chomp
		if $input == "q"
			GameFlow.new.quit
			system ("exit")
		end
		
	end

end