require 'mastermind_game'

class Runner
	def run
		
		mastermind = Mastermind.new
		response = nil

		until response && response.status == :won
			prints ">"
			inputs = gets.chomp
		end
	end

end