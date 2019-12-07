class Coordenadas
    @al
    @ba
    @ar
    @Xi
    @Yi
    @Xf
    @Yf
    $cardinales = ['N','E','S','O']
    @mirada
    
    def limit (mir)
        if ( mir == 4 )
            mir = 0
        end
        if ( mir == -1)
            mir = 3
        end
        return mir
    end

    def area (b,a)
        @al = a.to_i
        @ba = b.to_i
        @ar = @al * @ba
        return @ar.to_s
    end
    
    def cordIni(x, y,o)
        @Xi = x.to_i
        @Yi = y.to_i
        @Xf = @Xi
        @Yf = @Yi
        for i in (0..3)
            if($cardinales[i] == o)
                @mirada = i
            end
        end
        return @Xi.to_s , @Yi.to_s, $cardinales[@mirada]
    end

    def estaDentro() 
        if (@Xf >= 0 && @Xf < @ba-1  && @Yf >= 0 && @Yf  < @al-1)
            resp = "Dentro"
        else
            resp = "Fuera"
        end
        return resp
    end

    def cambiarOrientacion(m)
        if ( m == 'I' )
            @mirada = @mirada -1
        end
        if ( m == 'D')
            @mirada = @mirada + 1
        end
        @mirada = limit(@mirada)  
    end
    def mover (m)
        cambiarOrientacion(m)
        if(m == 'A')
            if( $cardinales[@mirada] == 'N')
                @Xf = @Xf -1
            end
            if( $cardinales[@mirada] == 'S')
                @Xf = @Xf + 1
            end
            if( $cardinales[@mirada] == 'E')
                @Yf = @Yf +1
            end
            if( $cardinales[@mirada] == 'O')
                @Yf = @Yf -1
            end
        end
        return @Xf.to_s,@Yf.to_s,$cardinales[@mirada]
    end
end