module Mechanics
	class Player
		attr_accessor :name, :stroy

		def initialize
			@name = ''
			@story = ''
			player_name
		end

		def player_name
			puts "Enter Name:"
			name = gets.strip
			@name = name
			puts "Welcome Sir #{@name}!"

			puts "1. continue"
			puts "2 But I am a lady"

			input = gets.strip
		end
        

	end
end