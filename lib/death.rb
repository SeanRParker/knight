
	def death
		"You are dead!"
		"Do you want to play again? (y or n)"
		answer = gets.strip.downcase

		if answer == 'y'
			#loop mack to the main page or lead them back to the root page
		elsif answer == 'n'
			'Good bye, your funeral was pitiful!'
			# then have an otion to loop ba to the main.
		else
			'You did not put a vaild answer, try again.'
			# class name
		end
	end
