module Mechanics
	class Player
		attr_accessor :name, :story

		def initialize
			@name = ''
			@story = "You wake up in the woods in the afternoon, with a huge headache."
			puts @story
			player_name
		end

		def player_name
			puts "What is your name?' A loud voice yells from nearby."
			name = gets.strip
			@name = name
			puts "Welcome Sir #{@name}!"
		end
        

	end
end