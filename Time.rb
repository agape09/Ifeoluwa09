def time_used(time_taken)
		#this method calculates the time taken for the player to get a perfect match
		t_min = time_taken/60 #time in munites
		t_sec = time_taken%60 #time in seconds
		t_time = "#{t_min}:#{t_sec}" #time taken seconds and munites
end