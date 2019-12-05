Feature: 
    Como Jugador
    Quiero realizar una serie de movimientos en el robot
    Para sentirme a gusto jugando

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada "1" en el campo "coordenadaX"
    And ingreso la coordenada "-1"  en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas son X: 1, Y: -1"

    Scenario: Ingresar diferentes coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada "8" en el campo "coordenadaX"
    And ingreso la coordenada "-10"  en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas son X: 8, Y: -10"

    
    