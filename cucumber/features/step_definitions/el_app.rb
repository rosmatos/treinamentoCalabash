require 'calabash-android/calabash_steps'


Dado(/^que eu acesse a home do aplicativo$/) do
  wait_for_element_exists("android.widget.Button marked:'ENTRAR'", :timeout => 10)
end

Quando(/^eu clicar em entrar$/) do
  touch("* id:'btRegisteredUser'")
end

Quando(/^informar o telefone$/) do
  wait_for_element_exists("android.widget.Button marked:'CONTINUAR'", :timeout => 10)
  touch("* id:'etPhoneNumber'")
  keyboard_enter_text(Faker::Base.numerify("119########"))
  hide_soft_keyboard
  touch("* id:'btLoginWithPhone'")
end

Entao(/^serei redirecionado para a tela de cadastro$/) do
  wait_for_element_exists("android.widget.Button marked:'CONFIRMAR'", :timeout => 10)
  
  #if wait_for_element_exists("android.widget.Button marked:'ENTRAR NA MINHA CONTA'", :timeout => 10)
  #  press_back_button
  #else

  #end
end

Entao(/^preencherei os campos iniciais$/) do
  sleep 05
end
