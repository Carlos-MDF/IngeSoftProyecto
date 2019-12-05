Feature: 
    Como Jugador
    Quiero realizar una serie de movimientos en el robot
    Para sentirme a gusto jugando

    Scenario: Ingresar las coordenadas iniciales del robot
    Given visito la pagina de juego
    And ingreso la coordenada en X a "1" en el campo "coordenadaX"
    And ingreso la coordenada en Y a "-1" en el campo "coordenadaY"
    When presiono el boton "Enviar"
    Then deberia mostrarme "Las coordenadas son X: 1, Y: -1"

    Scenario: Ingresar el area de juego del robot
    Given visito la pagina de juego
    And ingreso la base "5" en el campo "base"
    And ingreso la altura "4" en el campo "altura"
    When presiono el boton "Enviar"
    Then deberia mostrarme "El area es: 20m"


    
    