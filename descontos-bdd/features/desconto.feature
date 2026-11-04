Feature: Cálculo do desconto e total final
    Como um vendendor
    Eu quero calcular o desconto de uma compra a partir do perfil do cliente
    Para saber o novo total

    Scenario: O cliente tem menos de 18 anos, não estuda e nem trabalha
        Given a idade do cliente é 17 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente tem menos de 18 anos, estuda e não trabalha
        Given a idade do cliente é 17 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.05
        And o total final com o desconto deve ser 95.0

    Scenario: O cliente tem menos de 18 anos, estuda e trabalha
        Given a idade do cliente é 17 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.08
        And o total final com o desconto deve ser 92.0

    Scenario: O cliente tem mais de 18 anos e de 60 anos, não estuda e trabalha
        Given a idade do cliente é 28 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente tem mais de 18 anos e de 60 anos, não estuda e trabalha
        Given a idade do cliente é 28 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente tem mais de 60 anos, estuda e trabalha
        Given a idade do cliente é 66 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.10
        And o total final com o desconto deve ser 90.0

    Scenario: O cliente tem mais de 60 anos, não estuda e trabalha
        Given a idade do cliente é 66 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.10
        And o total final com o desconto deve ser 90.0

    Scenario: O cliente tem mais de 60 anos, estuda e não trabalha
        Given a idade do cliente é 66 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.10
        And o total final com o desconto deve ser 90.0

    Scenario: O cliente tem mais de 60 anos, não estuda e não trabalha
        Given a idade do cliente é 66 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.10
        And o total final com o desconto deve ser 90.0

    Scenario: O cliente tem mais de 18 anos e de 60 anos, estuda e trabalha
        Given a idade do cliente é 28 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.15
        And o total final com o desconto deve ser 85.0
            
    Scenario: O cliente tem mais de 18 anos e de 60 anos, não estuda e não trabalha
        Given a idade do cliente é 28 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0
            
    Scenario: O cliente tem mais de 18 anos e de 60 anos, não estuda e trabalha
        Given a idade do cliente é 28 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente tem 18 anos, não estuda e trabalha
        Given a idade do cliente é 18 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0
        
    Scenario: O cliente tem 60 anos, não estuda e trabalha
        Given a idade do cliente é 60 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente tem 18 anos, não estuda e não trabalha
        Given a idade do cliente é 18 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0
            
    Scenario: O cliente tem 60 anos, não estuda e não trabalha
        Given a idade do cliente é 60 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0
            
    Scenario: O cliente tem 18 anos, estuda e não trabalha
        Given a idade do cliente é 18 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0
            
    Scenario: O cliente tem 60 anos, estuda e não trabalha
        Given a idade do cliente é 60 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente tem 18 anos, estuda e trabalha
        Given a idade do cliente é 18 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.15
        And o total final com o desconto deve ser 85.0
            
    Scenario: O cliente tem 60 anos, estuda e trabalha
        Given a idade do cliente é 60 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.15
        And o total final com o desconto deve ser 85.0
    
    Scenario: O cliente tem menos de 18 anos, não estuda e trabalha
        Given a idade do cliente é 16 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 100.0
        Then o desconto do cliente deve ser 0.0
        And o total final com o desconto deve ser 100.0

    Scenario: O cliente adulto estuda e trabalha realizando uma compra de valor maior
        Given a idade do cliente é 25 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 200.0
        Then o desconto do cliente deve ser 0.15
        And o total final com o desconto deve ser 170.0

    Scenario: O cliente idoso realizando uma compra de valor fracionado
        Given a idade do cliente é 65 anos
        When eu adiciono cliente estuda igual a 0
        And eu adiciono cliente trabalha igual a 0
        And eu adiciono o total igual a 250.0
        Then o desconto do cliente deve ser 0.10
        And o total final com o desconto deve ser 225.0

    Scenario: O cliente realiza uma compra com total zerado
        Given a idade do cliente é 20 anos
        When eu adiciono cliente estuda igual a 1
        And eu adiciono cliente trabalha igual a 1
        And eu adiciono o total igual a 0.0
        Then o desconto do cliente deve ser 0.15
        And o total final com o desconto deve ser 0.0