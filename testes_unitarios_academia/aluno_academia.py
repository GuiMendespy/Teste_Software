class AlunoAcademia:
    def __init__(self, nome: str, sexo: str, peso: float, altura: float, idade: int):
        self.nome = nome
        self.sexo = sexo  # "M" ou "F"
        self.peso = peso  # kg
        self.altura = altura  # metros
        self.idade = idade

    def calcular_imc(self) -> float:
        """IMC = peso / (altura x altura). Peso e altura devem ser positivos."""
        if self.peso <= 0 or self.altura <= 0:
            raise ValueError("Peso e altura devem ser maiores que zero.")
        return self.peso / (self.altura * self.altura)

    def is_vip(self) -> bool:
        """
        Critérios VIP:
        Homem:  idade >= 40 -> IMC < 30 | idade < 40 -> IMC < 28
        Mulher: idade >= 40 -> IMC < 28 | idade < 40 -> IMC < 26
        """
        imc = self.calcular_imc()
        mais_de_40 = self.idade >= 40
        sexo = self.sexo.upper()

        if sexo == "M":
            return imc < 30 if mais_de_40 else imc < 28
        if sexo == "F":
            return imc < 28 if mais_de_40 else imc < 26
        raise ValueError("Sexo deve ser 'M' ou 'F'.")
