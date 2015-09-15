require_relative 'Game_Flow'
require 'colorize'

class Beginner
	def start_game_msg
		puts "I have generated a beginner sequnce with four elements made up of:\n"+"(b)lue".blue+"," +" (c)yan".cyan+"," +" (g)reen".green+" and (v)iolet. You are to get the sequence in which the colors appeared e.g. BCGV for" +" (b)lue".blue+","+" (c)yan".cyan+", (g)reen".green+" and (v)iolet.\nNOTE: You have 12 guesses to get this color or you loose the game!\nUse (q)uit at any time to end the game.\nReady to play?\nWhat is your guess?"

		
	end

end