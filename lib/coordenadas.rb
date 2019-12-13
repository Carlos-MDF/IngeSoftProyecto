require_relative './errors/invalid_dimension'
require_relative './errors/invalid_position'
require_relative './errors/invalid_move'

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
    @ordenes
    def limit (mir)
        if ( mir == 4 )
            mir = 0
        end
        if ( mir == -1)
            mir = 3
        end
        return mir
    end

    def area (b, a)
        if (b.to_i < 0 || a.to_i < 0)
            raise InvalidDimension.new
        end

        @al = a.to_i
        @ba = b.to_i
        @ar = @al * @ba
        puts @al, @ba, @ar
        return @ar.to_s
    end

    def cordIni(x, y, o)
        if (x.to_i < 0 || y.to_i < 0)
            raise InvalidPosition.new
        end
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

    def get_cord_X
        @Xi.to_s
    end

    def get_cord_Y
        @Yi.to_s
    end

    def get_cord_XF
        @Xf.to_s
    end

    def get_cord_YF
        @Yf.to_s
    end

    def get_orientacion
        $cardinales[@mirada]
    end

    def estaDentro()
         if (@Xf >= 0 && @Xf <= @ba  && @Yf >= 0 && @Yf  <= @al)
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
                @Yf = @Yf + 1
            end
            if( $cardinales[@mirada] == 'S')
                @Yf = @Yf - 1
            end
            if( $cardinales[@mirada] == 'E')
                @Xf = @Xf +1
            end
            if( $cardinales[@mirada] == 'O')
                @Xf = @Xf -1
            end
        end
        return @Xf.to_s,@Yf.to_s,$cardinales[@mirada]
    end

    def variasMovidas(orde)
        @ordenes = orde
        for i in (0 .. orde.length)
           resp= mover(orde[i])
           if(estaDentro() == "Fuera")
            raise InvalidMove.new
           end
        end
        return resp
    end

end