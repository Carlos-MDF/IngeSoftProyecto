#Given
Given("visito la pagina principal") do
    visit '/'
end

Given("visito la pagina de dimension") do
    visit '/dimension'
end

Given("visito la pagina de juego") do
    visit '/game'
end

Given("ingreso la coordenada en X a {string} en el campo {string}") do |valorX, campoX|
    fill_in(campoX, :with => valorX)
end
  
Given("ingreso la coordenada en Y a {string} en el campo {string}") do |valorY, campoY|
    fill_in(campoY, :with => valorY)
end
  
Given("ingreso la orientacion en {string} en el campo {string}") do |valorO, campoO|
    fill_in(campoO, :with => valorO)
end
  
Given("ingreso el largo {string} en el campo {string}") do |valorL, campoL|
    fill_in(campoL, :with => valorL)
end
  
Given("ingreso el ancho {string} en el campo {string}") do |valorA, campoA|
    fill_in(campoA, :with => valorA)
end

Given("ingreso el movimiento {string} en el campo {string}") do |valorM, campoM|
    fill_in(campoM, :with => valorM)
end
  
Given("ingreso {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor)
  end

#When
When("presiono el boton {string}") do |boton|
    click_button(boton)
end

#Then
Then("deberia ver un mensaje {string}") do |bienvenida|
    last_response.body.should =~ /#{bienvenida}/m
end

Then("deberia mostrarme {string}") do |dimension|
    last_response.body.should =~ /#{dimension}/m
end




