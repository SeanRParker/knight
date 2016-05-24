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
    erb :decline
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
    erb :live
	end

  get '/win' do
    "You didn't make it home to your own time, but you didn't pass out drunk in the Dark Ages. Let's count this as a win."
  end

	post '/name' do
		@name = params[:name]
	    $player.name = @name
	    erb :story
	end

  post '/pints' do
    amount = (params[:amount]).strip.to_i
    if amount <= 3
      erb :win
    elsif amount > 3
      erb :pass_out
    else
      erb :pints_error
    end
  end

  get '/town' do
    erb :town
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
