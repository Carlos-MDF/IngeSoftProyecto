require 'sinatra'
require_relative "lib/coordenadas"

get	'/'	do
    erb :index
end

get '/game' do
    erb :game
end

post '/position' do
    @coordenadas = Coordenadas.new
    @x = params[:coordenadaX]
    @y = params[:coordenadaY]
    @base = params[:base]
    @altura = params[:altura]
    @coor = @coordenadas.cordIni(@x, @y)
    @area = @coordenadas.area(@base, @altura)
    @mov = params[:movimiento]
    @movimiento = @coordenadas.mover(@mov)
    @dentro = @coordenadas.estaDentro()
    erb :position
end

