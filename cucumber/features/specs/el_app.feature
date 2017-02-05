#language: pt

Funcionalidade: Cadastro de Usuário
Eu, como novo usuário do aplicativo
Desejo criar uma nova conta
Para acessar todas as funcionalidades do app

@massa_el_nova_conta
Cenario: Criar nova conta

Dado que eu acesse a home do aplicativo
Quando eu clicar em entrar
E informar o telefone
Entao serei redirecionado para a tela inicial de cadastro
Entao preencherei a senha
E clicarei em Confirmar
Entao serei redirecionado para a tela final de cadastro
E preencherei os demais dados
Entao clicarei em Confirmar
E serei redirecionado para a tela de nível de escolaridade
Quando clicar em "Ensino Fundamental"
