require_relative 'Game_Flow'
require_relative 'GameInterface'
require_relative 'Time'
require_relative 'EvaluateGuess'

require 'colorize'
#this is used to apply color to some part of the game print-out

class Advance

	def initialize

		@result = Hash.new
		@comp = []
		user_guess = []
	end
	def advance_start_game
		#this instantiates the beginning of the game by printing some texts 
		#and calling the beginner_user_play to start the game
		puts "I have generated a beginner sequence with six elements made up of:"+" (b)lue".blue+"," +" (c)yan".cyan+"," +" (g)reen".green+","+ " (y)ellow".yellow+ ","+ " (i)ndigo,"+ " (r)ed".red+ ","+ " (m)agenta".magenta+  " and/or (v)iolet. You are to get the sequence in which the colors appeared e.g. BCGVM for" +" (b)lue".blue+","+" (c)yan".cyan+","+ "(g)reen".green+","+ " (m)agenta".magenta+ " and (v)iolet.\nNOTE: You have 12 guesses to get this color or you loose the game!\nUse"+ " (q)uit".red+ "at any time to end the game.\nReady to play?\nWhat is your guess?"
		
			advance_user_input
	
	end

	def self.advance_random_select
		#this is a class method used to generate the computer guess
		color = ['G', 'V', 'B', 'C', 'Y', 'I', 'R', 'M']
		@comp = []
		6.times do
  		@comp << color[rand(6)]
  		end
  		@comp
	end
	def advance_user_input
		# this begins the player to play as an intermediate level
		$trial = 0
		@comp = Advance.advance_random_select
		time_begin = Time.now.to_i
		loop do
			break if $trial == 12
		user_guess = gets.chomp
		evaluate_guess(user_guess)
		if user_guess == 'q'
			GameFlow.new.quit
		elsif user_guess == 'c'
			$trial += 1
			puts "The code is #{@comp}. Attempt left: #{12-$trial}."+"\nYou Can Try Again!!!".blue
			advance_start_game
		elsif user_guess.length < 6
			$trial +=1
			puts "It's too shot. Attempts left is #{12-$trial}. So try again:"
		elsif user_guess.length > 6
			$trial +=1
			puts "It's too long. Attempts left is #{12-$trial}. So try again:"
		elsif @comp == @result[:matches] #perfect match
			$trial +=1
			time_taken = Time.now.to_i - time_begin 
			puts "Congratulations! You have completed the sequence after".yellow+ " #{$trial}".magenta+ " guess in".yellow + " #{time_used(time_taken)}".magenta
			advance_start_game 
			if user_guess == 'q'
				GameFlow.new.quit
				#this exits the game after the player types 'q'
			end
		elsif @comp != @result[:matches]
			$trial += 1
			puts "#{user_guess} has".yellow+ " #{@result[:matches].length}".magenta+ " exact match(es),".yellow+ " #{@result[:nomatches].length}".magenta+ " partial match(es) and you have".yellow+ " #{12-$trial}".magenta+ " guess(es) left.\nTRY AGAIN!!!".yellow									
		end
	end
	end
end
