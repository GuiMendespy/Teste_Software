Feature: Cálculo de Média e Status do Aluno
    Como um professor
    Eu quero calcular a média das notas de um aluno
    Para saber se ele foi Aprovado, ficou em Recuperação ou
    foi Reprovado

    Scenario: Aluno é aprovado com média maior ou igual a 7
        Given que o aluno se chama "Carlos"
        When eu adiciono a nota 8.0
        And eu adiciono a nota 7.0
        Then a média do aluno deve ser 7.5
        And o status do aluno deve ser "Aprovado"

    Scenario: Aluno fica em recuperação
        Given que o aluno se chama "Ana"
        When eu adiciono a nota 5.0
        And eu adiciono a nota 6.0
        Then a média do aluno deve ser 5.5
        And o status do aluno deve ser "Recuperação"

    Scenario: Aluno é reprovado com média abaixo de 5
        Given que o aluno se chama "João"
        When eu adiciono a nota 3.0
        And eu adiciono a nota 4.0
        Then a média do aluno deve ser 3.5
        And o status do aluno deve ser "Reprovado"