#first
Dados(/^que estou aprendendo comandos$/) do
  @nome_cliente = Faker::Name.name
  @cpf= Faker::CPF.numeric
  @agencia = Faker::Base.numerify('####-#')
  @conta = Faker::Base.numerify('####-#')
  puts 'Nome do cliente:' + @nome_cliente #'Deu certo'#pending # Write code here that turns the phrase above into concrete actions
  puts 'CPF:' + @cpf
  puts 'Agência:' + @agencia
  puts 'Conta:' + @conta
end

Quando(/^escrever os comandos$/) do
  sleep 02 #pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^vou executar$/) do
  @comandos = 'Hey' #pending # Write code here that turns the phrase above into concrete actions
  puts @comandos
end

#second
Dado(/^que eu escrevi os comandos$/) do
  puts 'blah' #pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^eu executar$/) do
  @comandos_2 #pending # rite code here that turns the phrase above into concrete actions
  puts @comandos_2
end

Entao(/^ele vai gerar uma expressao regular$/) do
  sleep 05 #pending # Write code here that turns the phrase above into concrete actions
end

#third
Quando(/^eu vi as regex$/) do
  sleep 01 #pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^eu implementei os testes$/) do
  puts 'Consegui implementar' #pending # Write code here that turns the phrase above into concrete actions
end
