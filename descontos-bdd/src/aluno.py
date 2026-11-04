class Aluno:
    def __init__(self, nome: str):
        self.nome = nome
        self.notas = []

    def adicionar_nota(self, nota: float):
        if not (0 <= nota <= 10):
            raise ValueError("A nota deve estar entre 0 e 10.")
        self.notas.append(nota)

    def calcular_media(self) -> float:
        if not self.notas:
            return 0.0
        return sum(self.notas) / len(self.notas)
    
    def obter_status(self) -> str:
        media = self.calcular_media()
        if media >= 7.0:
            return "Aprovado"
        elif media >= 5.0:
            return "Recuperação"
        else:
            return "Reprovado"