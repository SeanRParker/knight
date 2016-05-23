
Dir[File.dirname(__FILE__) + '/mechanics/*.rb'].each {|file| require file}

class Main
	def initialize
		player = Mechanics::Player.new
		puts "1. Continue"
		puts "2. But I am a lady"

		input = gets.strip

		if input =='1'

			puts "duel or somthing"

		else
			puts "Welcome Lady #{player.name}"
		end
					
	end

end

test = Main.new