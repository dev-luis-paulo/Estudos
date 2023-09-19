//Desafios

//Desafio 1 - area

protocol Area {
    var area: Double { get }
}

class Quadrado: Area {
    var base: Double
    var area: Double {
        return base * base
    }
    
    init(_ base: Double) {
        self.base = base
    }
}

class Triangulo: Area {
    var base: Double
    var altura: Double
    var area: Double {
        return (base*altura)/2
    }
    
    init(_ base: Double, _ altura: Double) {
        self.base = base
        self.altura = altura
    }
}

var quadrado = Quadrado(3)
var triangulo = Triangulo(3, 5)
quadrado.area
triangulo.area

//Desafio 2 - moedas

enum Moeda: Int {
    case umCentavo = 1
    case cincoCentavos = 5
    case dezCentavos = 10
    
    static func somaValores(_ moedas: [Self]) -> Int {
        var valorSoma = 0
        
        for moeda in moedas {
            valorSoma += moeda.rawValue
        }
        
        return valorSoma
    }
}

let moedas: [Moeda] = [.umCentavo, .cincoCentavos, .dezCentavos]
Moeda.somaValores(moedas)
