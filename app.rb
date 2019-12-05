require 'sinatra'
require_relative "lib/coordenadas"

get	'/'	do
    erb :index
end

get '/game' do
    erb :game
end

post '/position' do
    coordenadas = Coordenadas.new
    @x = params[:coordenadaX]
    @y = params[:coordenadaY]
    @base = params[:base]
    @altura = params[:altura]
    @coor = coordenadas.generarCoordenadas(@x, @y)
    @area = coordenadas.calcularArea(@base, @altura)
    erb :position
end