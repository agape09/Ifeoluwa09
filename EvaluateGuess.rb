
def evaluate_guess(user_guess)
		#this method evaluates exact_match and the partial_match
  
  @result[:matches] = [] #exact matches
  @result[:nomatches] = [] #partial matches
  @result[:missed_matches] = [] #never matches any
  userchoice = user_guess.upcase.split("")
  zipped_array = @comp.zip(userchoice)
  matches_array = zipped_array.select do |each_array|
    if each_array[0] == each_array[1]
      @result[:matches] << each_array[0] #represent the exact matched elements
    end
  end
  partial_array = zipped_array - matches_array
  partial_array.each do |each_array|
    if userchoice.include? each_array[0] 
      @result[:nomatches] << each_array[0] #represent the partial matches
    else
      @result[:missed_matches] << each_array[0] #represent the elements that doesn't match at all
    end
  end
    @result
end