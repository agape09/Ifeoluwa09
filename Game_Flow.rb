require 'colorize'

class GameFlow

	def game_play 
		"To start the game select the level that you would like to play:\nEnter (1) for Biginner\nEnter (2) for Intermediate\nEnter (3) for Advanced"
	end
	
	def instruction
		"Enter a sequence of colors containing the generated colors e.g. RYGB or YGBR.\nIf you enter than fewer than or more than four colors\nyou would receieve an error message"
	end
	def background
		puts "Just a little background on MaStErMiNdGaMe.".blue+" MaStErMiNdGaMe is a board game with an interesting history (rather a legend). The modern game with pegs was invented in 1970 by Mordecai Meirowitz, an Israeli postmaster and telecommunications expert. It resembles an earlier pencil and paper game called Bulls and Cows that may date back a century or more."+" Since 1971, the rights to Mastermind have been held by Invicta Plastics of Oadby, near Leicester, UK. (Invicta always named the game Master Mind.) They originally manufactured it themselves, though they have since licensed its manufacture to Hasbro worldwide, with the exception of Pressman Toys and Orda Industries who have the manufacturing rights to the United States and Israel, respectively."+" Starting in 1973, the game box featured a photograph of a well-dressed, distinguished-looking man seated in the foreground, with an east Asian woman standing behind him. The two amateur models (Bill Woodward and Cecilia Fung) reunited in June 2003 to pose for another publicity photo."
    end
	def quit
		puts "Thanks for playing this game...\nSure you really enjoyed it. Goodbye!".red
	end
end