Feature: 
    Como Jugador
    Quiero ingresar la posicion donde iniciara mi robot
    Para tener conocimiento de mi punto de partida luego de realizar otros movimientos

    Background:
    Given visito la pagina de dimension
    And ingreso "7" en el campo "Largo"
    And ingreso "8" en el campo "Ancho"
    And presiono el boton "Enviar"

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "0" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "0" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    And presiono el boton "Agregar Auto"
    When presiono el boton "Terminar"
    Then deberia mostrarme "Las coordenadas iniciales del robot son X: 0, Y: 0 con orientacion al N"

    Scenario: Ingresar las coordenadas iniciales del robot con valores correctos en X, Y
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "1" en el campo "coordenadaY"
    And ingreso la orientacion en "E" en el campo "orientacion"
    And presiono el boton "Agregar Auto"
    When presiono el boton "Terminar"
    Then deberia mostrarme "Las coordenadas iniciales del robot son X: 1, Y: 1 con orientacion al E"

    Scenario: Ingresar las coordenadas en X incorrectas para la posicion inicial del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "-1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "0" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    When presiono el boton "Agregar Auto"
    Then deberia mostrarme "Las coordenadas son invalidas"

    Scenario: Ingresar las coordenadas en Y incorrectas para la posicion inicial del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-1" en el campo "coordenadaY"
    And ingreso la orientacion en "N" en el campo "orientacion"
    When presiono el boton "Agregar Auto"
    Then deberia mostrarme "Las coordenadas son invalidas"
