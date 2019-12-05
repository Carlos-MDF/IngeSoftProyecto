Feature: 
    Como Jugador
    Quiero realizar una serie de movimientos en el robot
    Para sentirme a gusto jugando

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-1" en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas iniciales son X: 1, Y: -1"

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "8" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-10" en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas iniciales son X: 8, Y: -10"

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "-5" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "11" en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas iniciales son X: -5, Y: 11"

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "8" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "10" en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas iniciales son X: 8, Y: 10"

    Scenario: Ingresar el area de juego del robot
    Given visito la pagina de juego
    And ingreso la base "5" en el campo "base"
    And ingreso la altura "4" en el campo "altura"
    When presiono el boton "Enviar"
    Then deberia mostrarme "El area es: 20m"

    Scenario: Ingresar el area de juego del robot
    Given visito la pagina de juego
    And ingreso la base "6" en el campo "base"
    And ingreso la altura "10" en el campo "altura"
    When presiono el boton "Enviar"
    Then deberia mostrarme "El area es: 60m"

    Scenario: Ingresar un movimiento y ver que este dentro del area
    Given visito la pagina de juego
    And ingreso la base "5" en el campo "base"
    And ingreso la altura "4" en el campo "altura"
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-1" en el campo "coordenadaY"
    And ingreso el movimiento "I" en el campo "movimiento"
    When presiono el boton "Enviar"
    Then deberia mostrarse "La posicion final es: X: 0, Y: -1 y esta Dentro del area"

    Scenario: Ingresar un movimiento y ver que se salga del area
    Given visito la pagina de juego
    And ingreso la base "5" en el campo "base"
    And ingreso la altura "4" en el campo "altura"
    And ingreso la coordenada en X a "2" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "2" en el campo "coordenadaY"
    And ingreso el movimiento "A" en el campo "movimiento"
    When presiono el boton "Enviar"
    Then deberia mostrarse "La posicion final es: X: 2, Y: 3 y esta Fuera del area"

    Scenario: Ingresar un movimiento y ver que se salga del area
    Given visito la pagina de juego
    And ingreso la base "5" en el campo "base"
    And ingreso la altura "4" en el campo "altura"
    And ingreso la coordenada en X a "-2" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-2" en el campo "coordenadaY"
    And ingreso el movimiento "I" en el campo "movimiento"
    When presiono el boton "Enviar"
    Then deberia mostrarse "La posicion final es: X: -3, Y: -2 y esta Fuera del area"


    
    