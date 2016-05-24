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
		 erb :steal
	end

	get '/live' do
    erb :live
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

  post '/name' do
    @name = params[:name]
      $player.name = @name
      erb :story
  end

  post '/pints' do
    amount = (params[:amount]).strip.to_i
    if amount < 4
      erb :win
    elsif amount > 3
      erb :pass_out
    # elsif amount = 0
    #   erb :pints_error
    else
      erb :pints_error
    end
  end
