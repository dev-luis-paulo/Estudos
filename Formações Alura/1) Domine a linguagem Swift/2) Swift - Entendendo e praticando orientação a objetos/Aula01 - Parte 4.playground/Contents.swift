//Desafio 2 e 3 - restaurante e retangulo

class Restaurante {
    var nome: String
    var tipoComida: String
    var numPedidos: Int
    
    //class nao precisa de mutating para alterar
    func recebePedido() -> Int {
        numPedidos += 1
        print("Foi acrescentado um pedido")
        
        return numPedidos
    }
    
    func calculaTotalPedidos() -> Int {
        var valorPedido = 35
        
        return numPedidos * valorPedido
    }
    
    init(nome: String, tipoComida: String) {
        self.nome = nome
        self.tipoComida = tipoComida
        numPedidos = 0
    }
}

class Retangulo {
    var base: Double
    var altura: Double
    
    func calcularArea() -> Double {
        print("Foi calculado a área do retângulo")
        return base * altura
    }
    
    func calcularPerimetro() -> Double {
        print("Foi calculado o perimetro do retângulo")
        return base * 2 + altura * 2
    }
    
    init(base: Double, altura: Double){
        self.base = base
        self.altura = altura
    }
}

//instanciando um objeto para acessar os dados da struct
var restaurante = Restaurante(nome: "qualquer", tipoComida: "sushi")
var teste = 0

restaurante.recebePedido()
restaurante.recebePedido()
teste = restaurante.calculaTotalPedidos()


print("Testando o retorno do calculaTotalPedidos, o valor foi \(teste)")

//instanciando retangulo
var retangulo = Retangulo(base: 5, altura: 10)
var areaRetangulo = 0.0
var perimetroRetangulo = 0.0

areaRetangulo = retangulo.calcularArea()
perimetroRetangulo = retangulo.calcularPerimetro()

print("A área do retângulo é \(areaRetangulo)")
print("O perimetro do retangulo é \(perimetroRetangulo)")


