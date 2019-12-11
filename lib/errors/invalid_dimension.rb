class InvalidDimension < StandardError
    def initialize
      super("La dimension no es valida")
    end
end