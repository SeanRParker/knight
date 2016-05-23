require 'pry'
require 'sinatra'
# require_relative 'lib/main.rb'
# require 'lib/main.rb'

Dir[File.dirname(__FILE__) + '/lib/mechanics/*.rb'].each {|file| require file}

include Mechanics

get '/' do
	erb :player
end

post '/name' do
	@name = params[:name]
    @player = Mechanics::Player.new(@name)
    erb :story
end

