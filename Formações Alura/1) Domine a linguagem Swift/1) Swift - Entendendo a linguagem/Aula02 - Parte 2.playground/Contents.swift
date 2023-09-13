var intervaloFechado = 10...20
var intervalorSemiAberto = 10..<20
var numeroAleatorio = Int.random(in: 0...100)
print(numeroAleatorio)

var numero = 15

switch numero {
case 0...10: print("Número entre 0 e 10")
case 10...20: print("Número entre 10 e 20")
default: print("Número fora do intervalo 0 até 20")
}

var animal = "Cachorro"

switch animal {
case "Cachorro", "Gato": print("Animal doméstico")
default: print("Animal selvagem")
}

switch numero {
case let x where x % 2 == 0: print("Número \(x) par")
default: print("Número ímpar")
}

//Desafio 1 - Pontuação do usuário
let pergunta1: String = "Qual o valor de 8 x 2?"
let resposta1: Int = 16
let respostaUsuario1: Int = 12
var pontuacaoUsuario: Int = 0

if respostaUsuario1 == resposta1 {
    pontuacaoUsuario += 1
} else {
    pontuacaoUsuario -= 1
}

print(pontuacaoUsuario)

//Desafio 2 - Idade usuário
let age = 13

switch age{
case 0..<13: print("Criança")
case 13..<18: print("Adolescente")
default: print("Adulto")
}

//Desafio 3 - operadores logicos e relacionais
let idadee = 18
let estaComRG = true

if idadee >= 18 && estaComRG {
    print("Pode entrar")
} else {
    print("Não pode entrar")
}
