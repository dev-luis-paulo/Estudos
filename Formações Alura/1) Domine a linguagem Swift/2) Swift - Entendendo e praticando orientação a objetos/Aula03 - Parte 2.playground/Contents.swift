//Desafios

//desafio 1 - uso de propriedades computadas imc e adulto
class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    //dessa forma a instancia pode acessar somente como leitura
    private(set) var peso: Double
    
    //com private a instancia nao pode acessar esse atributo, somente a class
    private var imc: Double {
        return peso / (altura*altura)
    }
    
    private var adulto: Bool {
        return idade >= 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double){
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

//desafio 2 - uso de newValue e oldValue

class Empregado {
    var nome: String
    var salario: Double {
        willSet {
            if newValue > salario {
                print("Parabens, recebeu aumento")
            } else if newValue == salario {
                print("Nao houve aumento")
            }
        }
        
        didSet {
            if salario < oldValue {
                print("O novo salario nao pode ser menor que o salario anterior")
                salario = oldValue //mantem salario anterior, nesse caso
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

let empregado = Empregado(nome: "Luis", salario: 2000)
empregado.salario = 2500
empregado.salario = 3500
empregado.salario = 2500 //deve manter o salario anterior
print(empregado.salario)

