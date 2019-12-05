class Coordenadas
    @al
    @ba
    @ar
    @Xi
    @Yi
    @Xf
    @Yf
    def area (b,a)
        @al = a.to_i
        @ba = b.to_i
        @ar = @al * @ba
        return @ar.to_s
    end
    
    def cordIni(x, y)
        @Xi = x.to_i
        @Yi = y.to_i  
        return @Xi.to_s , @Yi.to_s
    end

    def estaDentro()
        base = Math.sin(@ba / 2)
        altura = Math.sin(@al / 2)
        x = @Xf
        y = @Yf 
        if(@Xf < 0)
            x = -(@Xf)
        end
        if(@Yf < 0)
            y = -(@Yf)
        end
        if (x <= base.ceil && y <= altura.ceil)
            "Dentro"
        else
            "Fuera"
        end
    end

    def mover(m)
        x = @Xi
        y = @Yi
        if(m == 'A')
            @Xf = x 
            @Yf = y + 1
        elsif ( m == 'I')
            @Xf = x - 1
            @Yf = y
        elsif ( m == 'D')
            @Xf = x + 1
            @Yf = y
        else
            @Xf = x 
            @Yf = y 
        end
        return @Xf.to_s , @Yf.to_s  
    end
end