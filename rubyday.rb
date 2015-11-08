require 'sinatra'
require 'sinatra/activerecord'
require './models/singer'
require './models/song'
require 'byebug'

get '/search/:method' do
  @method, @query = params[:method], params[:q]
  @songs = Song.send(@method, @query)
  erb :songs
end
