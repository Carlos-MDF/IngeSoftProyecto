require 'sinatra'
require_relative "./lib/coordenadas"
require_relative './lib/errors/invalid_dimension'
require_relative './lib/errors/invalid_position'
require_relative './lib/errors/invalid_move'

$coordenadasList = []
$base
$altura
$dimension
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
    $altura = params[:largo]
    $base = params[:ancho]
    @dimension = $altura.to_i * $base.to_i
    if $altura.to_i < 0 || $base.to_i < 0
        erb :invalidDimension
    else
        erb :game
    end
end

post '/position' do  
    begin
         @x = params[:coordenadaX]
         @y = params[:coordenadaY]
         @orientacion = params[:orientacion]
         @mov = params[:movimiento]
         micoordenada = Coordenadas.new
         micoordenada.area($altura, $base)
         micoordenada.cordIni(@x, @y, @orientacion)
         micoordenada.variasMovidas(@mov)
         $coordenadasList.push(micoordenada)
         $dimension = micoordenada
         erb :game
     rescue InvalidPosition
        erb :invalidPosition
     rescue InvalidMove
        erb :invalidMove
    rescue InvalidDimension
        erb :invalidDimension
     end
end

get '/finish' do

    erb :position
    
end
