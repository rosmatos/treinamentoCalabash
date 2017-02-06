#language: pt

Funcionalidade: Cadastro de Usuário
Eu, como novo usuário do aplicativo
Desejo criar uma nova conta
Para acessar todas as funcionalidades do app

@massa_el_nova_conta
@el_nova_conta
Cenario: Criar nova conta

Dado que eu acesse a home do aplicativo
Quando eu clicar em entrar
E informar o telefone
Entao serei redirecionado para a tela inicial de cadastro
Quando preencher a senha
E clicar em Confirmar
Entao serei redirecionado para a tela final de cadastro
Quando preencher os demais dados
E clicar em Confirmar
Entao serei redirecionado para a tela de nível de escolaridade
E clicar em "Ensino Fundamental"
E clicar em "TELEMARKETING"
E clicar em "Operador Call Center"
E clicar em "FINALIZAR"
Entao verei a tela inicial com o nome do usuário

#@massa_el_escolher_perfil
#@el_escolher_perfil
#Cenario: Escolher o Perfil

#Dado que eu criei uma nova conta
Quando clicar em "+ ESCOLHER"
E clicar em ESCOLHA MAIS UMA
E clicar em "VENDAS"
E clicar em "Balconista"
E clicar em "FINALIZAR"
E preencher o campo Tempo de Experiência
E clicar em "FINALIZAR"
Entao verei a tela inicial com o nome do usuário
