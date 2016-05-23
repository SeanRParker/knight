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
