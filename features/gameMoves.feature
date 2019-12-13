  Feature: 
    Como Jugador
    Quiero realizar una serie de movimientos en el robot
    Para sentirme a gusto jugando

    Scenario: Ingresar un movimiento y ver que este dentro del campo de juego
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "2" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    And ingreso el movimiento "IAIAIAIAA" en el campo "movimiento"
    When presiono el boton "Terminar"
    Then deberia mostrarme "La posicion final del robot es: X: 1, Y: 3 con orientacion al N"

    Scenario: Ingresar un movimiento y ver que este fuera del campo de juego
    Given visito la pagina de juego
    And ingreso la coordenada en X a "0" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "0" en el campo "coordenadaY"
    And ingreso la orientacion en "E" en el campo "orientacion"
    And ingreso el movimiento "ADADAA" en el campo "movimiento"
    When presiono el boton "Terminar"
    Then deberia mostrarme "El movimiento es invalido su robot se salio del campo de juego"