class CalculaDesconto:
    def __init__(self, idade: int):
        self.idade = idade
        self.estuda = 0
        self.trabalha = 0
        self.total = 0.0

    def adicionar_estuda(self, estuda: int):
        self.estuda = estuda

    def adicionar_trabalha(self, trabalha: int):
        self.trabalha = trabalha

    def adicionar_total(self, total: float):
        self.total = total

    def calcula_percentual_desconto(self) -> float:
        if self.idade > 60:
            return 0.10
        elif 18 <= self.idade <= 60:
            if self.estuda == 1 and self.trabalha == 1:
                return 0.15
            else:
                return 0.0
        else:  # Menor que 18 anos
            if self.estuda == 1 and self.trabalha == 1:
                return 0.08
            elif self.estuda == 1 and self.trabalha == 0:
                return 0.05
            else:
                return 0.0

    def calcula_total_com_desconto(self) -> float:
        percentual = self.calcula_percentual_desconto()
        return round(self.total * (1 - percentual), 2)