from behave import given, when, then
from src.desconto import CalculaDesconto


@given('a idade do cliente é {idade:d} anos')
def step_dado_idade(context, idade):
    context.calculo_desconto = CalculaDesconto(idade)


@when('eu adiciono cliente estuda igual a {estuda:d}')
def step_quando_adiciona_estuda(context, estuda):
    context.calculo_desconto.adicionar_estuda(estuda)


@when('eu adiciono cliente trabalha igual a {trabalha:d}')
def step_quando_adiciona_trabalha(context, trabalha):
    context.calculo_desconto.adicionar_trabalha(trabalha)


@when('eu adiciono o total igual a {total:f}')
def step_quando_adiciona_total(context, total):
    context.calculo_desconto.adicionar_total(total)


@then('o desconto do cliente deve ser {desconto_esperado:f}')
def step_entao_verifica_desconto(context, desconto_esperado):
    desconto_calculado = context.calculo_desconto.calcula_percentual_desconto()
    assert abs(desconto_calculado - desconto_esperado) < 0.001, \
        f"Desconto esperado: {desconto_esperado}, mas foi: {desconto_calculado}"


@then('o total final com o desconto deve ser {total_esperado:f}')
def step_entao_verifica_total_com_desconto(context, total_esperado):
    total_calculado = context.calculo_desconto.calcula_total_com_desconto()
    assert abs(total_calculado - total_esperado) < 0.001, \
        f"Total esperado: {total_esperado}, mas foi: {total_calculado}"