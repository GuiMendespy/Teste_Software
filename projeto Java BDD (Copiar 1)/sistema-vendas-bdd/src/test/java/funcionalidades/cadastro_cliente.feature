Feature: Cadastro de Cliente

  Como um usuário,
  Eu quero me cadastrar no sistema,
  Para que eu possa realizar compras.

  Scenario: Cadastro de um novo cliente com sucesso
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo "Nome" com "João Silva"
    E eu preencho o campo "Email" com "joao.silva@email.com"
    E eu clico no botão "Cadastrar"
    Então eu devo ser redirecionado para a página principal
    E uma mensagem de sucesso "Cadastro realizado com sucesso!" deve ser exibida.

  Scenario: Tentativa de cadastro com email inválido
    Dado que eu estou na página de cadastro
    Quando eu preencho o campo "Nome" com "Maria Souza"
    E eu preencho o campo "Email" com "maria.souza"
    E eu clico no botão "Cadastrar"
    Então uma mensagem de erro "Por favor, insira um email válido." deve ser exibida.
