Before '@massa_el_nova_conta' do
  @telefone = Faker::Base.numerify("119########")
  @senha = Faker::Base.numerify('#####')
  @nome_completo = Faker::Name.name
  @sexo = "Feminino"
  @data_nasc = Time.now.strftime("%d/%m/1983")
  @email = Faker::Internet.email
  @cep = "04363040"
end
