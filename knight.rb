require 'pry'
require 'sinatra'
# require_relative 'lib/mechanics/death.rb'
# require 'lib/main.rb'

Dir[File.dirname(__FILE__) + '/lib/mechanics/*.rb'].each {|file| require file}

include Mechanics

$player = Mechanics::Player.new(" ")

	get '/' do
	erb :player
	end

	get '/continue_lady' do
		@name = params[:name]
		# @player.name = @name
		erb :lady_version
	end

	get '/continue_sir' do
		erb :sir_version
	end

	get '/surrender' do
		erb :surrender
	end

	get '/decline' do

		"Knight kills you anyway."
		"Well, I did give you a chance."
	end

	get '/kill' do
		erb :kill
	end

	get '/steal' do
		 "I'll let you live, but I'm taking these."
		 "(You proceed to take Sir Jabsalot's horse and sword)
		 The horse leads you to the nearest town, because horses are smart, and that's where he happens to stable.
		 Once at the stable he refuses to go anywhere else with you, but at least you're in town."
	end

	get '/live' do
		"Sure. I could use the help, I don't know where I am"
	    "Sir Jabsalot tells you,"
	    "Walk that way for 100 paces, there'll be a road. Follow it to the right for two miles and you'll be in town."
	    "You trust him and end up in town."
	end

	post '/name' do
		@name = params[:name]
	    $player.name = @name
	    erb :story
	end



	get '/duel' do
		erb :duel
	end

	get '/stick' do
		erb :stick
	end

	get '/dagger' do
		erb :dagger
	end

	get '/sword' do
		erb :sword
	end

	get '/death' do
		erb :death
	end

	get '/funeral' do
		erb :funeral
	end
