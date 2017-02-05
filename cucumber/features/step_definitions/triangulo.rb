require 'calabash-android/calabash_steps'
require 'rspec/expectations'

Dado(/^que eu informo o lado um$/) do
  wait_for_element_exists("android.support.v7.widget.AppCompatEditText, id:'txtLado1'", :timeout => 10)
  touch("android.support.v7.widget.AppCompatEditText id:'txtLado1'")
  clear_text("* id:'txtLado1'")
  keyboard_enter_text(@lado1)
  hide_soft_keyboard
end

Dado(/^informar o lado dois$/) do
  touch("android.support.v7.widget.AppCompatEditText id:'txtLado2'")
  keyboard_enter_text(@lado2)
  hide_soft_keyboard
end

Dado(/^informar o lado tres$/) do
  touch("android.support.v7.widget.AppCompatEditText id:'txtLado3'")
  keyboard_enter_text(@lado3)
  hide_soft_keyboard
end

Quando(/^eu clicar em Calcular$/) do
  touch("android.support.v7.widget.AppCompatButton id:'btnCalcular'")
end

Entao(/^deverá mostrar o tipo de triângulo$/) do
  wait_for_element_exists("android.support.v7.widget.AppCompatTextView, id:'txtResultado'", :timeout => 10)
  resultado = query("android.support.v7.widget.AppCompatTextView, id:'txtResultado'", :getText)
  expect(query("android.support.v7.widget.AppCompatTextView, id:'txtResultado'", :getText)[3]).to eq(@mensagem_triangulo_escaleno)
end

#expect("this string").to include("is str")
#Then I wait for "mensagem" to appear
#perform_action('swipe', 'right')
#https://developer.xamarin.com/guides/testcloud/calabash/working-with/gestures/
