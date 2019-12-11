class InvalidMove < StandardError
    def initialize
      super("El movimiento no es valido")
    end
end