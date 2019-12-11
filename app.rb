require 'sinatra'
require_relative "lib/coordenadas"
require_relative './lib/errors/invalid_dimension'
require_relative './lib/errors/invalid_position'
require_relative './lib/errors/invalid_move'

$coordenadas = Coordenadas.new

get	'/'	do
    erb :index
end

get '/game' do
    erb :game
end

get '/dimension' do
    erb :dimension
end

post '/saveDimension' do
    begin
        @ancho = params[:ancho]
        @largo = params[:largo]
        @dimension = $coordenadas.area(@ancho, @largo)
        erb :game
    rescue InvalidDimension
        erb :invalidDimension
    end
end

post '/position' do  
    begin
        @x = params[:coordenadaX]
        @y = params[:coordenadaY]
        @orientacion = params[:orientacion]
        @mov = params[:movimiento]
        @coor = $coordenadas.cordIni(@x, @y, @orientacion)
        @movimiento = $coordenadas.variasMovidas(@mov)
        erb :position
    rescue InvalidPosition
        erb :invalidPosition
    rescue InvalidMove
        erb :invalidMove
    end
end

