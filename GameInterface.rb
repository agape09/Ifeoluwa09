require_relative 'Game_Flow'
require_relative 'Beginner'
require_relative 'Intermediate'
require_relative 'Advance'
require 'colorize'
#this is used to apply color to some part of the game print-out

class GameInterface

	def game_interface 

		# method to display each interface of the game
		puts "\nWelcome to MaStErMiNdGaMe...".yellow+" \n\nWould you like to" + " (p)lay".blue+", read the" + " (i)nstructions".magenta+ ", read a little" + " (b)ackground".green+ "\non MaStErMiNdGaMe or" +" (q)uit?".red
		#this dispalys the welcome message
		puts game_flow_msg
		puts game_select_level
		puts enter_player_name
		
	end
	def game_flow_msg 
		# this method tells the user more about the game and also helps the player to choose to play
		inputs = gets.chomp
		
		case inputs.downcase
		when "p"
			GameFlow.new.game_play
			# this enables the player bo play the game
		when "i"
			GameFlow.new.instruction
			 puts game_interface 
			#this tells the player on how to play the game
			#and at the same time takes the player back to the welcome message
		when "b"
			GameFlow.new.background
			puts game_interface 
			#this tells the player a little background of the game
			#and at the same time takes the player back to the welcome message
		when "q"
			system (exit)
			#the player exits the game on typing 'q'
		else
			puts "Invalid Input,".red + " Type" +" (p)".blue+ "to play," +" (i)".magenta+ "to go to instruction," +" (b)".green+ " to go to background\nand"+ " (q)".red + " to quit the game."
			game_flow_msg
		end
		


	end #end of method game_flow_msg

	def game_select_level
		#this method enable the player to choose the level to play
	
		$input = gets.chomp
		case 
		when $input == "1"
			puts "So you would like to play as a beginner!\nStart by telling me your name:".blue
			enter_player_name
			Beginner.new.beginner_start_game
			#player choose to play the beginner level on typing '1'
		when $input == "2"
			puts "So you would like to play as an intermediate!\nStart by telling me your name:".green
			enter_player_name
			Intermediate.new.intermediate_start_game
			#player choose to play the intermediate level on typing '2'
		when $input == "3"
			puts "So you would like to play as advanced!\nStart by telling me your name:".magenta
			enter_player_name
			Advance.new.advance_start_game
			#the player choose to play the advance level on typing '3'
		else
			puts "Invalid input...".red+ "\n\nSelect" + " (1) " + "for Beginner," + " (2) " + "for Intermediate or" + " (3) " + "for Advance"
			if  $input == 'q'
				GameFlow.new.quit
				#this exits the game when the player types 'q'
			else
				game_select_msg
				#this takes player back to the levels to choose
			end
		end
		
	end #end of game_select_level

	def enter_player_name 
		#this method enables the player to input his/her name
		#and the name is stored in the variable 'name'
		name = ""
		$input = gets.chomp
		if $input == "q"
			GameFlow.new.quit
			#this exits the game when the player types 'q'
		elsif $input == "/a..z/"
			name << $input
		end
	end #end of method enter_player_name

end