require 'sinatra'
require 'sinatra/activerecord'
require './models/singer'
require './models/song'

get '/' do
  redirect "/search/ilike?q=eyes"
end

get '/search/:method' do
  @method, @query = params[:method], params[:q]
  @songs = Song.send(@method, @query)
  @songs = @songs.short if params[:short]
  erb :songs
end
