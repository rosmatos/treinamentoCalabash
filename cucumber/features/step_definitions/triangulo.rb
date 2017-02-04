require 'calabash-android/calabash_steps'
require 'test/unit'
extend Test::Unit::Assertions

Dado(/^que eu informo o lado um$/) do
  wait_for_element_exists("android.support.v7.widget.AppCompatEditText, id:'txtLado1'", :timeout => 10)
  touch("android.support.v7.widget.AppCompatEditText, id:'txtLado1'")
  #clear_text("* id:'txtLado1'")
  keyboard_enter_text(@lado1)
  hide_soft_keyboard
end

Dado(/^informar o lado dois$/) do

  #clear_text("* id:'txtLado2'")
  query("* id:'txtLado2'", setText: @lado2)
  hide_soft_keyboard
end

Dado(/^informar o lado tres$/) do
  touch("android.support.v7.widget.AppCompatEditText, id:'txtLado3'")
  #clear_text("* id:'txtLado3'")
  keyboard_enter_text(@lado3)
  hide_soft_keyboard
end

Quando(/^eu clicar em Calcular$/) do
  touch("android.support.v7.widget.AppCompatButton, id:'btnCalcular'")
end

Entao(/^deverá mostrar o tipo de triângulo$/) do
  wait_for_element_exists("android.support.v7.widget.AppCompatTextView, id:'txtResultado'", :timeout => 10)
  resultado = query("android.support.v7.widget.AppCompatTextView, id:'txtResultado'", :getText)
  puts resultado[3]
  #Assertion.assert_equal("O triângulo é Escaleno", @resultado[3])
  #check_element_exists(query("android.support.v7.widget.AppCompatTextView, id:'txtResultado'", :getText)[3])

end

#Then I wait for "mensagem" to appear
