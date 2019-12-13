require 'Coordenadas'
require 'spec_helper'

RSpec.describe Coordenadas do
    
    it 'Si el jugador ingresa la base 5 y la altura 5 le devuelve el area 25' do
        coordenadas = Coordenadas.new
        expect(coordenadas.area('5','5')).to eq('25')
    end
    it 'Si el jugador ingresa la base -5 y la altura 5 le devuelve Dimension Invalida' do
        coordenadas = Coordenadas.new
        expect{coordenadas.area('-5','5').to raise_error(InvalidDimension)}
    end
    it 'Si el jugador ingresa posicion X=0, posicion Y=0 y la orientacion, le devuelve el array [0,0,N]' do
        coordenadas = Coordenadas.new
        expect(coordenadas.cordIni('0','0','N')).to eq(['0','0','N'])
    end
    it 'Si el jugador ingresa posicion X=-1, posicion Y=0 y la orientacion, le devuelve Posicion Invalida' do
        coordenadas = Coordenadas.new
        expect{coordenadas.cordIni('-1','0','N').to raise_error(InvalidPosition)}
    end
    it 'Si el jugador ingresa las coordenadas iniciales 1 en X ,1 en Y y orientacion N con el movimeinto A le devuelve el array [0,1]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('1','1','N')
        expect(coordenadas.mover('A')).to eq(['1','2','N'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 1 en X ,1 en Y y orientacion N con el movimeinto A le devuelve el array [0,1,O]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('1','1','N')
        expect(coordenadas.mover('I')).to eq(['1','1','O'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 1 en X ,1 en Y y orientacion O con el movimeinto A le devuelve el array [0,1,N]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('1','1','O')
        expect(coordenadas.mover('D')).to eq(['1','1','N'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 1 en X ,1 en Y y orientacion S con el movimeinto A le devuelve el array [0,1,S]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('1','1','S')
        expect(coordenadas.mover('A')).to eq(['1','0','S'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 1 en X ,1 en Y y orientacion e con el movimeinto A le devuelve el array [0,1,E]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('1','1','E')
        expect(coordenadas.mover('A')).to eq(['2','1','E'])
    end
    it 'Si el jugador ingresa las coordenadas iniciales 1 en X ,1 en Y y orientacion O con el movimeinto A le devuelve el array [0,1,O]' do
        coordenadas = Coordenadas.new
        coordenadas.cordIni('1','1','O')
        expect(coordenadas.mover('A')).to eq(['0','1','O'])
    end
    it 'Si el jugador ingresa una base de 5, una altura de 4 ,las coordenadas iniciales 1 en X ,1 en Y y orientacion N con el movimiento A y devuelve la respuesta Dentro' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','4')
        coordenadas.cordIni('1','1','N')
        coordenadas.mover('A')
        expect(coordenadas.estaDentro()).to eq("Dentro")
    end
    it 'Si el jugador ingresa una base de 5, una altura de 4 ,las coordenadas iniciales 0 en X ,0 en Y y orientacion N con el movimiento A y devuelve la respuesta Fuera' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','4')
        coordenadas.cordIni('0','0','S')
        coordenadas.mover('A')
        expect(coordenadas.estaDentro()).to eq("Fuera")
    end
    it 'Si el jugador ingresa una base de 5, una altura de 5 ,las coordenadas iniciales 1 en X ,2 en Y y orientacion N con los movimientos IAIAIAIAA devuelve [1,3,N]' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','5')
        coordenadas.cordIni('1','2','N')
        expect(coordenadas.variasMovidas('IAIAIAIAA')).to eq(['1','3','N'])
    end
    it 'Si el jugador ingresa una base de 5, una altura de 4 ,las coordenadas iniciales 0 en X ,0 en Y y orientacion E con los movimientos ADADAA devuelve el Movimiento es Invalido' do
        coordenadas = Coordenadas.new
        coordenadas.area('5','4')
        coordenadas.cordIni('0','0','E')
        expect{coordenadas.variasMovidas('ADADAA').to raise_error(InvalidMove)}
    end
end