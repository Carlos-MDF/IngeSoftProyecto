class Coordenadas
    def generarCoordenadas(x, y)
        return [x, y]
    end

    def calcularArea(altura, base)
        return (altura.to_i * base.to_i).to_s
    end
end