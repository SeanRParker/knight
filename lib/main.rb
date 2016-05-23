
Dir[File.dirname(__FILE__) + '/mechanics/*.rb'].each {|file| require file}

class Main
	def initialize
		player = Mechanics::Player.new
	end
end

# test = Main.new