//Aula01 - Tipos de dados
//Desafio da aula01
//Utilizei declaração implicita, explicita, conversao de tipo de dado
//var cria uma variavel, let uma constante (nao permite alterar o valor)

var nome: String = "Luís Paulo"
var apelido = "Luís"
var idade: Int = 30
idade = Int(30.5) // transforma em int para atribuir corretamente (só um exemplo de como mudar o tipo de dado)
let altura: Double = 1.85
var gostaDeSwift: Bool = true

print("Inicial do nome: \(nome.first!)") //decidi usar .first para retornar apenas primeiro char, nao sendo necessario criar um var só p/ isso
print("Nome: \(nome)")
print("Apelido: \(apelido)")
print("Idade: \(idade)")
print("Altura: \(altura)")
print("Gosta de Swift: \(gostaDeSwift)")
