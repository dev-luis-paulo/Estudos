//Aula01-parte2 - Operadores aritméticos e de atribuição

10 + 2
10 - 2
8 * 2

10 / 2
5 / 2 // Aqui retorna 2, pois é considerado a divisao de int com int, sendo o valor retornado um int também
Double(5) / 2 //ja apresenta um valor correto, pois divide um num decimal com int

4 % 2
5 % 2

var num1 = 2
var num2 = 3
var soma: Int
soma = num1 + num2

//print(soma)

soma += 1 //atribuicao composta

var nome = "Luís Paulo"
var sobrenome = "da Costa Cavalcante"

//print("Nome completo: \(nome) \(sobrenome)")

//Desafio 1 - Tela quente
//Transformar graus celsius em Farenheit

var celsius: Double = 30
var fahrenheit = celsius * 9/5 + 32

print("\(celsius)°C em Fahrenheit é \(fahrenheit)°F")

//Desafio 2 - Calculo de media

let nota1: Double = 3.3
let nota2: Double = 6.3
let nota3: Double = 9.6
let mediaDasNotas = (nota1 + nota2 + nota3)/3
print("A média das notas é de \(mediaDasNotas)")
