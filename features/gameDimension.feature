Feature: 
    Como Jugador
    Quiero ingresar las dimensiones de mi campo de juego
    Para poder jugar en diferentes campos de juego can variadas dimensiones

    Scenario: Ingresar la dimension del campo de juego del robot
    Given visito la pagina de dimension
    And ingreso el largo "5" en el campo "largo"
    And ingreso el ancho "4" en el campo "ancho"
    When presiono el boton "Enviar"
    Then deberia mostrarme "La dimension del campo de juego es de: 20m2"

    Scenario: Ingresar una dimension invalida de campo de juego del robot
    Given visito la pagina de dimension
    And ingreso el largo "-6" en el campo "largo"
    And ingreso el ancho "10" en el campo "ancho"
    When presiono el boton "Enviar"
    Then deberia mostrarme "La dimension del campo de juego es invalida"

