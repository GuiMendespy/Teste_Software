Feature: Cadastro de Produto

  Como um administrador,
  Eu quero cadastrar novos produtos no sistema,
  Para que eles possam ser vendidos.

  Scenario: Cadastro de um novo produto com sucesso
    Dado que eu estou na página de cadastro de produtos
    Quando eu preencho o campo "Nome" com "Camiseta Azul"
    E eu preencho o campo "Preço" com "29.90"
    E eu preencho o campo "Estoque" com "50"
    E eu clico no botão "Salvar Produto"
    Então uma mensagem de sucesso "Produto cadastrado com sucesso!" deve ser exibida
    E o produto "Camiseta Azul" deve estar disponível no sistema.
