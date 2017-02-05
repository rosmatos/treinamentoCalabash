require 'calabash-android/calabash_steps'

Dado(/^que eu acesse a home do aplicativo$/) do
  wait_for_element_exists("android.widget.Button marked:'ENTRAR'", :timeout => 10)
  flick_left
end

Quando(/^eu clicar em entrar$/) do
  touch("* id:'btRegisteredUser'")
end

Quando(/^informar o telefone$/) do
  tap_when_element_exists("* id:'etPhoneNumber'")
  keyboard_enter_text(@telefone)
  hide_soft_keyboard
  touch("* id:'btLoginWithPhone'")
end

Entao(/^serei redirecionado para a tela inicial de cadastro$/) do
  if element_exists("android.widget.Button marked:'ENTRAR NA MINHA CONTA'")
    press_back_button
    tap_when_element_exists("* id:'etPhoneNumber'")
    keyboard_enter_text(@telefone)
    hide_soft_keyboard
    touch("* id:'btLoginWithPhone'")
  else
    expect(query("android.widget.Button marked:'CONFIRMAR'")).to_not be_nil
  end
end

Entao(/^preencher a senha$/) do
  tap_when_element_exists("android.widget.TextView id:'etPassword'")
  keyboard_enter_text(@senha)
  hide_soft_keyboard
  tap_when_element_exists("android.widget.TextView id:'etConfirmPassword'")
  keyboard_enter_text(@senha)
  hide_soft_keyboard
end

Entao(/^serei redirecionado para a tela final de cadastro$/) do
  tap_when_element_exists("android.widget.EditText id:'etName'")
end

Entao(/^preencher os demais dados$/) do
  keyboard_enter_text(@nome_completo)
  if @sexo == "Feminino"
    query("android.widget.RadioButton id:'rbFemale'",:setChecked=>true)
  else
    query("android.widget.RadioButton id:'rbMale'",:setChecked=>true)
  end
  tap_when_element_exists("android.widget.EditText id:'etBirthDate'")
  keyboard_enter_text(@data_nasc)
  hide_soft_keyboard
  tap_when_element_exists("android.widget.EditText id:'etEmail'")
  keyboard_enter_text(@email)
  hide_soft_keyboard
  tap_when_element_exists("android.widget.EditText id:'etCep'")
  keyboard_enter_text(@cep)
  hide_soft_keyboard
end

Entao(/^clicar em Confirmar$/) do
  touch("android.widget.Button id:'btConfirm'")
end

Entao(/^serei redirecionado para a tela de nível de escolaridade$/) do
  expect(query("android.widget.ListView id:'listviewGrade'")).to_not be_nil
end

Entao(/^clicar em "(.*?)"$/) do |texto| #Ensino Fundamental
  tap_when_element_exists("* marked:'#{texto}'")
end

Entao(/^verei a tela inicial com o nome do usuário$/) do
  wait_for_element_exists("android.widget.TextView id:'tvName'", :timeout=>10)
  expect(query("android.widget.TextView id:'tvName'", :getText)).to include(@nome_completo)
end
