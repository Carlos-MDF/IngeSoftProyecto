require 'Coordenadas'

RSpec.describe Coordenadas do
    it 'Si el jugador ingresa posicion X, posicion Y le devuelve la cadena de la posicion X, Y' do
    coordenadas = Coordenadas.new
    expect(coordenadas.generarCoordenadas(0, 0)).to eq([0, 0])
    end
end