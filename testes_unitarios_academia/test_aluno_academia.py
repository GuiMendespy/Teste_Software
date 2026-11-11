import pytest

from aluno_academia import AlunoAcademia


# ---------- IMC ----------

@pytest.mark.parametrize(
    "peso, altura, imc_esperado",
    [
        (70.0, 1.75, 22.857),
        (80.0, 1.80, 24.691),
        (50.0, 1.60, 19.531),
        (100.0, 2.00, 25.0),
    ],
    ids=["70kg-1.75m", "80kg-1.80m", "50kg-1.60m", "100kg-2.00m"],
)
def test_imc_com_valores_positivos(peso, altura, imc_esperado):
    aluno = AlunoAcademia("Teste", "M", peso, altura, 30)
    assert aluno.calcular_imc() == pytest.approx(imc_esperado, abs=0.01)


@pytest.mark.parametrize(
    "peso, altura",
    [
        (0.0, 1.75),
        (70.0, 0.0),
        (-70.0, 1.75),
        (70.0, -1.75),
        (-70.0, -1.75),
        (0.0, 0.0),
    ],
    ids=[
        "peso-zero",
        "altura-zero",
        "peso-negativo",
        "altura-negativa",
        "ambos-negativos",
        "ambos-zero",
    ],
)
def test_imc_com_valores_invalidos(peso, altura):
    aluno = AlunoAcademia("Teste", "M", peso, altura, 30)
    with pytest.raises(ValueError):
        aluno.calcular_imc()


# ---------- HOMEM ----------

@pytest.mark.parametrize(
    "idade, peso, altura",
    [
        (45, 80.0, 1.75),  # IMC ~26.1
        (40, 91.5, 1.75),  # limite de idade, IMC ~29.88
        (60, 70.0, 1.80),  # IMC ~21.6
    ],
    ids=["45-anos", "limite-40-anos", "60-anos"],
)
def test_homem_vip_com_40_anos_ou_mais(idade, peso, altura):
    assert AlunoAcademia("Joao", "M", peso, altura, idade).is_vip() is True


@pytest.mark.parametrize(
    "idade, peso, altura",
    [
        (30, 80.0, 1.75),  # IMC ~26.1
        (39, 85.0, 1.75),  # limite de idade, IMC ~27.76
        (20, 65.0, 1.80),  # IMC ~20.06
    ],
    ids=["30-anos", "limite-39-anos", "20-anos"],
)
def test_homem_vip_com_menos_de_40_anos(idade, peso, altura):
    assert AlunoAcademia("Pedro", "M", peso, altura, idade).is_vip() is True


@pytest.mark.parametrize(
    "idade, peso, altura",
    [
        (30, 90.0, 1.75),   # <40, IMC ~29.4 (>= 28)
        (45, 100.0, 1.75),  # 40+, IMC ~32.7 (>= 30)
        (39, 112.0, 2.00),  # <40, IMC exatamente 28
        (40, 120.0, 2.00),  # 40+, IMC exatamente 30
    ],
    ids=["abaixo-40-imc-alto", "acima-40-imc-alto", "limite-imc-28", "limite-imc-30"],
)
def test_homem_nao_vip(idade, peso, altura):
    assert AlunoAcademia("Carlos", "M", peso, altura, idade).is_vip() is False


# ---------- MULHER ----------

@pytest.mark.parametrize(
    "idade, peso, altura",
    [
        (45, 65.0, 1.65),  # IMC ~23.9
        (40, 75.0, 1.65),  # limite de idade, IMC ~27.55
        (55, 60.0, 1.60),  # IMC ~23.4
    ],
    ids=["45-anos", "limite-40-anos", "55-anos"],
)
def test_mulher_vip_com_40_anos_ou_mais(idade, peso, altura):
    assert AlunoAcademia("Maria", "F", peso, altura, idade).is_vip() is True


@pytest.mark.parametrize(
    "idade, peso, altura",
    [
        (30, 60.0, 1.65),  # IMC ~22.0
        (39, 68.0, 1.65),  # limite de idade, IMC ~24.98
        (22, 55.0, 1.70),  # IMC ~19.0
    ],
    ids=["30-anos", "limite-39-anos", "22-anos"],
)
def test_mulher_vip_com_menos_de_40_anos(idade, peso, altura):
    assert AlunoAcademia("Ana", "F", peso, altura, idade).is_vip() is True


@pytest.mark.parametrize(
    "idade, peso, altura",
    [
        (30, 80.0, 1.65),   # <40, IMC ~29.4 (>= 26)
        (45, 80.0, 1.65),   # 40+, IMC ~29.4 (>= 28)
        (39, 104.0, 2.00),  # <40, IMC exatamente 26
        (40, 112.0, 2.00),  # 40+, IMC exatamente 28
    ],
    ids=["abaixo-40-imc-alto", "acima-40-imc-alto", "limite-imc-26", "limite-imc-28"],
)
def test_mulher_nao_vip(idade, peso, altura):
    assert AlunoAcademia("Julia", "F", peso, altura, idade).is_vip() is False
