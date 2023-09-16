//Aula 1 - structs e classes

struct ContaCorrente {
    var saldo = 0.0
    var nome: String
    
    //mutating permite alterar um atributo dessa struct dentro de um método
    mutating func sacar(_ valor: Double){
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double){
        saldo += valor
        print("Foi realizado um deposito de \(valor)")
    }
}

//instanciando um objeto para acessar os dados da struct
var contaCorrenteLuis = ContaCorrente(nome: "Luis")
print(contaCorrenteLuis.saldo)
contaCorrenteLuis.depositar(8000)
print(contaCorrenteLuis.saldo)

var contaCorrentePaulo = ContaCorrente(nome: "Paulo")
contaCorrentePaulo.depositar(10000)
contaCorrentePaulo.sacar(5000)
print(contaCorrentePaulo.saldo)
