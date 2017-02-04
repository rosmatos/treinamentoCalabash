#language: pt

Funcionalidade: Calcular os lados do triângulo

Eu, como usuário do app
Desejo informar os valores dos lados do triângulo
Para realizar um cálculo e mostrar o tipo do triângulo

@massa_triangulo
Cenario: Calcular lados do triangulo

  Dado que eu informo o lado um
  E informar o lado dois
  E informar o lado tres
  Quando eu clicar em Calcular
  Entao deverá mostrar o tipo de triângulo
