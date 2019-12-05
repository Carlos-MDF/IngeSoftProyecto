#Given
Given("visito la pagina principal") do
    visit '/'
end

Given("visito la pagina de juego") do
    visit '/game'
end

#When
When("ingreso la coordenada {string} en el campo {string}") do |valorX, campoX|
    fill_in(campoX, :with => valorX)
end
  
When("ingreso la coordenada {string}  en el campo {string}") do |valorY, campoY|
    fill_in(campoY, :with => valorY)
end
  
When("presiono el boton {string}") do |boton|
    click_button(boton)
end
#Then
Then("deberia mostrarme {string}") do |coordenadas|
    last_response.body.should =~ /#{coordenadas}/m
end

Then("deberia ver un mensaje {string}") do |bienvenida|
    last_response.body.should =~ /#{bienvenida}/m
end


