// Operadores relacionais e lógicos, condicionais

var pontuacao1 = 8.0
var pontuacao2 = 10.0

pontuacao1 > pontuacao2
pontuacao1 >= pontuacao2
pontuacao1 < pontuacao2
// <= == !=

var idade = 30
var adulto = idade >= 18
var possuiCNHValida = true

// && || ! (and, or, not)

var podeDirigir = adulto && possuiCNHValida

if idade >= 18 {
    print("Pode iniciar o processo de tirar carteira de motorista.")
} else{
    print("Não pode tirar carteira ainda")
}

//Aqui ao verificar se ambos forem true entra no bloco senao condicao nao foi satisfeita e entra no segundo bloco
if idade >= 18 && possuiCNHValida {
    print("Pode dirigir")
} else {
    print("Não pode dirigir")
}

//Operador ternário
idade >= 18 ? print("Maior de idade") : print("Menor de idade")
