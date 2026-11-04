Feature: Carrinho de Compras

  Como um cliente,
  Eu quero adicionar produtos ao meu carrinho,
  Para que eu possa comprá-los.

  Scenario: Adicionar um produto ao carrinho
    Dado que um produto "Livro de Java" com preço R$50.00 e estoque de 10 está disponível
    E eu estou visualizando a página do produto "Livro de Java"
    Quando eu clico no botão "Adicionar ao Carrinho"
    Então um item com o produto "Livro de Java" deve ser adicionado ao meu carrinho
    E o total do meu carrinho deve ser R$50.00
    E o estoque do produto "Livro de Java" deve ser 9.

  Scenario: Adicionar múltiplos produtos diferentes ao carrinho
    Dado que um produto "Mouse Gamer" com preço R$80.00 e estoque de 20 está disponível
    E um produto "Teclado Mecânico" com preço R$150.00 e estoque de 15 está disponível
    E eu adiciono 1 "Mouse Gamer" ao meu carrinho
    Quando eu adiciono 2 "Teclado Mecânico" ao meu carrinho
    Então eu devo ter 3 itens no meu carrinho
    E o total do meu carrinho deve ser R$380.00
    E o estoque do "Mouse Gamer" deve ser 19
    E o estoque do "Teclado Mecânico" deve ser 13.
