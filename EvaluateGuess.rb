def evaluate_guess(user_guess)
		#this method evaluates exact_match and the partial_match

      	@result[:matches] = [] 

      	@result[:nomatches] = []

      	@result[:missed_matches] = []

      	userchoice = user_guess.upcase.split("")

      	zipped_array = @comp.zip(userchoice)

      	matches_array = zipped_array.select do |each_array|

     		if each_array[0] == each_array[1]

         	@result[:matches] << each_array[0]

     		end

 		end

   		partial_array = zipped_array - matches_array

    	partial_array.each do |each_array|

      		if userchoice.include? each_array[0]

         	@result[:nomatches] << each_array[0]

      		else

          	@result[:missed_matches] << each_array[0]

      		end

    	end

    	@result
	end