Feature: 
    Como Jugador
    Quiero ingresar la posicion donde iniciara mi robot
    Para tener conocimiento de mi punto de partida luego de realizar otros movimientos

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "0" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "0" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas iniciales del robot son X: 0, Y: 0 con orientacion al N"

    Scenario: Ingresar las coordenadas iniciales del robot con valores correctos en X, Y
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "1" en el campo "coordenadaY"
    And ingreso la orientacion en "E" en el campo "orientacion"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas iniciales del robot son X: 1, Y: 1 con orientacion al E"

    Scenario: Ingresar las coordenadas en X incorrectas para la posicion inicial del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "-1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "0" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas son invalidas"

    Scenario: Ingresar las coordenadas en Y incorrectas para la posicion inicial del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-1" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas son invalidas"
