//Propriedades

class Conta{
    var saldo = 0.0 { //propriedade armazenada
        //willset e didset sao observadores de propriedade
        willSet {
            print("O saldo esta sendo alterado! O seu novo valor sera de \(newValue)")
        }
        
        //caso queira utilizar outro nome para a variavel, ao inves de oldValue utiliar ()
        didSet(valorAntigo) {
            print("O saldo esta sendo alterado! O seu valor antigo era \(valorAntigo)")
        }
    }
    var nome: String
    
    //propriedade estatica
    static var taxaTransferencia = 0.1
    
    //propriedade computada, nao pode ser let, pois valor sera recalculado
    var negativado: Bool {
        return saldo < 0
    }
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double){
        saldo += valor
    }
    
    init(nome: String){
        self.nome = nome
    }
}

var contaLuis = Conta(nome: "Luis")
contaLuis.sacar(50)
//print(contaLuis.negativado)

contaLuis.depositar(100)
//print(contaLuis.negativado)

//print(Conta.taxaTransferencia)
