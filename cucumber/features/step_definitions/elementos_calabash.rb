require 'calabash-android/calabash_steps'

Dado(/^que eu acesso o console do calabash$/) do
  puts 'ok' #pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^eu reinstalar o app$/) do
  puts 'ok' #pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^entrar em background do aplicativo$/) do
  puts 'ok' #pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^eu consigo buscar elementos$/) do
  touch('android.widget.Button', id:'btnCep')
  touch('android.widget.TextView', id: 'edtCep')
  keyboard_enter_text("04363040")
  hide_soft_keyboard
  touch("android.widget.Button, id:'btnChamaBuscaCEP'")
  wait_for_element_exists("android.widget.TextView, id:'txtBC_logradouro'", :timeout => 200)
  logradouro = query("android.widget.TextView, id:'txtBC_logradouro'", :getText)
  puts logradouro[0]
  press_back_button
  touch('android.widget.Button', id:'btnHistorico')
end
