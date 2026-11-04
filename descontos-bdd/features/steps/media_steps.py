from behave import given, when, then
from src.aluno import Aluno


@given('que o aluno se chama "{nome}"')
def step_dado_aluno(context, nome):
    context.aluno = Aluno(nome)

@when('eu adiciono a nota {nota:f}')
def step_quando_adiciona_nota(context, nota):
    context.aluno.adicionar_nota(nota)

@then('a média do aluno deve ser {media_esperada:f}')
def step_entao_verifica_media(context, media_esperada):
    media_calculada = context.aluno.calcular_media()
    assert abs(media_calculada - media_esperada) < 0.01, \
    f"Média esperada {media_esperada}, mas foi {media_calculada}"

@then('o status do aluno deve ser "{status_esperado}"')
def step_entao_verifica_status(context, status_esperado):
    status_calculado = context.aluno.obter_status()
    assert status_calculado == status_esperado, \
    f"Status esperado '{status_esperado}', mas foi '{status_calculado}'"
