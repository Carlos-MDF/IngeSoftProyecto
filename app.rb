require 'sinatra'
require_relative "lib/coordenadas"

get	'/'	do
    erb :index
end

get '/game' do
    erb :game
end

post '/position' do
    @CordX = params[:coordenadaX]
    @CordY = params[:coordenadaY]
    erb :position
end