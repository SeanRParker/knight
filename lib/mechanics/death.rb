
	def death
		puts "You are dead!"
		puts "Do you want to play again? (y or n)"
		answer = gets.strip.downcase

		if answer == 'y'
			#loop mack to the main page or lead them back to the root page
		elsif answer == 'n'
			puts 'Good bye, your funeral was pityful!'
			# then have an otion to loop ba to the main.
		else
			puts 'You did not put a vaild answer, try again.'
			# class name
		end
	end
