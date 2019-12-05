require 'Coordenadas'

RSpec.describe Coordenadas do
    it 'Si el jugador ingresa posicion X, posicion Y le devuelve el array de la posicion X, Y' do
    coordenadas = Coordenadas.new
    expect(coordenadas.cordIni('0','0')).to eq(['0','0'])
    end
    it 'Si el jugador ingresa la base 5 y la altura 5 le devuelve el area 25' do
        coordenadas = Coordenadas.new
        expect(coordenadas.area('5','5')).to eq('25')
    end
    it 'Si el jugador ingresa las coordenadas iniciales 0 en X y 0 en Y con el movimeinto A le devuelve el array [0,1]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('0','0')
        expect(coordenadas.mover('A')).to eq(['0','1'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 0 en X y 0 en Y con el movimeinto I le devuelve el array [-1,0]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('0','0')
        expect(coordenadas.mover('I')).to eq(['-1','0'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 0 en X y 0 en Y con el movimeinto D le devuelve el array [1,0]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('0','0')
        expect(coordenadas.mover('D')).to eq(['1','0'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 0 en X y 0 en Y, con la base 5 y la altura 4 y el movimiento A le devuelve Dentro' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','4')
        coordenadas.cordIni('0','0')
        coordenadas.mover('A')
        expect(coordenadas.estaDentro()).to eq("Dentro")
    end
    it 'Si el jugador ingresa las coordenadas iniciales -3 en X y 0 en Y, con la base 5 y la altura 4 y el movimiento I le devuelve Fuera' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','4')
        coordenadas.cordIni('-3','0')
        coordenadas.mover('I')
        expect(coordenadas.estaDentro()).to eq("Fuera")
    end
    it 'Si el jugador ingresa las coordenadas iniciales 0 en X y 2 en Y, con la base 5 y la altura 4 y el movimiento A le devuelve Fuera' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','4')
        coordenadas.cordIni('0','2')
        coordenadas.mover('A')
        expect(coordenadas.estaDentro()).to eq("Fuera")
    end
end