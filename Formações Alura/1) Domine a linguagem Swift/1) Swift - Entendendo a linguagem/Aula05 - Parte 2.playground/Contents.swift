//Set
var nomes: Set<String> = ["Luis", "Joao", "Pedro", "Regina"]
//set é desordenado, cada elemento nao possui index
//nao possui elementos duplicados, mesmo se inserir

nomes.contains("Luis")

//tuplas
typealias Coordenadas = (x: Int, y: Double) //Pode definir de forma explicita
var coordenadas = (x: 5, y: 3.5) //Int, Double (Pode conter tipos diferentes), pode ter mais de 2 elementos

coordenadas.x
coordenadas.y

var pessoa = (nome: "Luis", idade: 30)
pessoa.nome
pessoa.idade

var (nome, idade) = pessoa
print(nome)

//dicionario
var pontuacao = [
    "Luis": 100,
    "Joca": 60,
    "Pedro": 56
]

//dic vazio
var person: [String: Int] = [:]

//pode reservar capacidade, no caso se quiser 10 pessoas
person.reserveCapacity(10)

print(pontuacao["Luis"])
pontuacao["Ana"] = 80 //nesse caso cria elemento
pontuacao.updateValue(1000, forKey: "Luis")
print(pontuacao)

for (nome, pontuacao) in pontuacao {
    print("O usuario \(nome) fez \(pontuacao) pontos")
}

for nome in pontuacao.keys {
    print(nome)
}

for pontos in pontuacao.values {
    print(pontos)
}




