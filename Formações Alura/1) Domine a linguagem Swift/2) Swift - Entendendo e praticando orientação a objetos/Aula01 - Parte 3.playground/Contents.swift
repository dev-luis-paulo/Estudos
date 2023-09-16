//Desafio 1 - calculadora

class Calculadora {
    var num1: Double
    var num2: Double
    var resultado: Double
    
    //class nao precisa de mutating para alterar
    func soma() -> Double {
        resultado = num1 + num2
        print("\(num1) + \(num2) = \(resultado)")
        
        return resultado
    }
    
    func sub() -> Double {
        resultado = num1 - num2
        print("\(num1) - \(num2) = \(resultado)")
        
        return resultado
    }
    
    func mult() -> Double {
        resultado = num1 * num2
        print("\(num1) * \(num2) = \(resultado)")
        
        return resultado
    }
    
    func div() -> Double {
        if num2 == 0 {
            print("Não pode haver divisão por zero!")
        } else {
            resultado = num1 / num2
            print("\(num1) / \(num2) = \(resultado)")
        }
        
        return resultado
    }
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
        resultado = 0.0
    }
}

//instanciando um objeto para acessar os dados da struct
var calculadora = Calculadora(num1: 5, num2: 5)
var teste = 0.0

teste = calculadora.soma()
calculadora.sub()
calculadora.mult()
calculadora.div()


print("Testando o retorno da soma, o valor da soma foi \(teste)")

